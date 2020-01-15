DROP VIEW IF EXISTS badges_view;
GO
CREATE VIEW badges_view
AS
SELECT DISTINCT
  bookings.conference_id,
  people.first_name,
  people.last_name,
  people.email,
  companies.name company_name
FROM attendees
JOIN people ON people.id = attendees.person_id
JOIN day_enrollments ON attendees.id = day_enrollments.attendee_id
JOIN day_bookings ON day_bookings.id = day_enrollments.day_booking_id
JOIN bookings ON bookings.id = day_bookings.booking_id
JOIN clients ON clients.id = bookings.client_id
LEFT JOIN companies ON companies.client_id = clients.id;
GO

DROP VIEW IF EXISTS client_statistics_view;
GO
CREATE VIEW client_statistics_view
AS
SELECT
  clients.id client_id,
  COUNT(DISTINCT bookings.id) number_of_bookings,
  SUM(dbo.booking_paid_amount(bookings.id)) total_payments
FROM clients
JOIN bookings ON bookings.client_id = clients.id
GROUP BY clients.id;
GO

DROP VIEW IF EXISTS upcoming_conferences_summary_view;
GO
CREATE VIEW upcoming_conferences_summary_view
AS
SELECT
  conferences.id conference_id,
  conferences.name conference_name,
  MIN(conference_days.date) start_date,
  MAX(conference_days.date) end_date,
  dbo.day_price_on(conferences.id, GETDATE()) price_per_day,
  MIN(dbo.available_conference_day_spots(conference_days.id)) available_all_day_spots
FROM conferences
JOIN conference_days ON conference_days.conference_id = conferences.id
WHERE conference_days.date >= GETDATE()
GROUP BY conferences.id, conferences.name;
GO

DROP VIEW IF EXISTS monthly_incomes_view;
GO
CREATE VIEW monthly_incomes_view
AS
SELECT
  YEAR(date) year,
  MONTH(date) month,
  SUM(value) income
FROM booking_payments
GROUP BY YEAR(date), MONTH(date);
GO

DROP VIEW IF EXISTS booking_costs_view;
GO
CREATE VIEW booking_costs_view
AS
WITH booking_costs AS (
  SELECT
    id,
    dbo.booking_full_days_cost(id) full_days_cost,
    dbo.booking_full_workshops_cost(id) full_workshops_cost,
    dbo.booking_discount(id) discount,
    dbo.booking_paid_amount(id) paid_amount
  FROM bookings
)
SELECT
  id,
  full_days_cost,
  full_workshops_cost,
  discount,
  (full_days_cost + full_workshops_cost) * (1 - discount) AS total_cost,
  paid_amount,
  (full_days_cost + full_workshops_cost) * (1 - discount) - paid_amount AS to_pay
FROM booking_costs;
GO

DROP VIEW IF EXISTS missing_attendees_view;
GO
CREATE VIEW missing_attendees_view
AS
SELECT
  bookings.conference_id conference_id,
  companies.name company_name,
  companies.phone company_phone
FROM bookings
JOIN companies ON companies.client_id = bookings.client_id
WHERE cancelled_at IS NULL
  AND DATEDIFF(DAY, GETDATE(), dbo.conference_start_date(bookings.conference_id)) < 14
  AND bookings.id IN (
    -- Missing attendees for a booked conference day
    SELECT DISTINCT booking_id
    FROM day_bookings
    LEFT JOIN day_enrollments ON day_bookings.id = day_enrollments.day_booking_id
    GROUP BY day_bookings.id, day_bookings.booking_id, day_bookings.attendee_count
    HAVING day_bookings.attendee_count > COUNT(day_enrollments.id)
    UNION
    -- Missing attendees for a booked workshop
    SELECT DISTINCT booking_id
    FROM workshop_bookings
    JOIN day_bookings ON workshop_bookings.day_booking_id = day_bookings.id
    LEFT JOIN workshop_enrollments ON workshop_bookings.id = workshop_enrollments.workshop_booking_id
    GROUP BY workshop_bookings.id, day_bookings.booking_id, workshop_bookings.attendee_count
    HAVING workshop_bookings.attendee_count > COUNT(workshop_enrollments.id)
  );
GO

DROP VIEW IF EXISTS workshop_interests_summary_view;
GO
CREATE VIEW workshop_interests_summary_view
AS
WITH interests_summary AS (
  SELECT
    bookings.conference_id,
    workshop_interests.booking_id,
    workshop_interests.workshop_id,
    dbo.available_workshop_spots(workshops.id) available_spots,
    workshops.attendee_limit total_spots,
    DATEDIFF(DAY, GETDATE(), dbo.conference_start_date(bookings.conference_id)) days_until_conference
  FROM workshop_interests
  JOIN workshops ON workshops.id = workshop_interests.workshop_id
  JOIN bookings on bookings.id = workshop_interests.booking_id
)
SELECT
  conference_id,
  booking_id,
  workshop_id,
  available_spots,
  total_spots,
  1 - ROUND(available_spots / CAST(total_spots AS FLOAT), 4) occupation_rate,
  days_until_conference
FROM interests_summary
WHERE available_spots > 0 AND days_until_conference > 0;
GO
