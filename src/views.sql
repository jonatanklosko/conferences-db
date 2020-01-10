DROP VIEW IF EXISTS badges_view; GO
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

DROP VIEW IF EXISTS client_statistics_view; GO
CREATE VIEW client_statistics_view
AS
SELECT
  clients.id client_id,
  COUNT(DISTINCT bookings.id) number_of_bookings,
  SUM(booking_payments.value) total_payments
FROM clients
JOIN bookings ON bookings.client_id = clients.id
LEFT JOIN booking_payments ON booking_payments.booking_id = bookings.id
GROUP BY clients.id;
GO

DROP VIEW IF EXISTS upcoming_conferences_summary_view; GO
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
