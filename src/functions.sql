DROP FUNCTION IF EXISTS day_price_on; GO
CREATE FUNCTION day_price_on(
  @conference_id INT,
  @date DATE
)
RETURNS MONEY
AS
BEGIN
  RETURN (
    SELECT TOP 1 price
    FROM conference_prices
    WHERE conference_id = @conference_id AND final_date >= @date
    ORDER BY final_date
  )
END;
GO

DROP FUNCTION IF EXISTS available_conference_day_spots; GO
CREATE FUNCTION available_conference_day_spots(
  @conference_day_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT
      attendee_limit - ISNULL(SUM(day_bookings.attendee_count), 0)
    FROM conference_days
    LEFT JOIN day_bookings ON day_bookings.conference_day_id = conference_days.id
    WHERE conference_days.id = @conference_day_id
    GROUP BY conference_days.id, conference_days.attendee_limit
  )
END;
GO

DROP FUNCTION IF EXISTS available_workshop_spots; GO
CREATE FUNCTION available_workshop_spots(
  @workshop_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT
      attendee_limit - ISNULL(SUM(workshop_bookings.attendee_count), 0)
    FROM workshops
    LEFT JOIN workshop_bookings ON workshop_bookings.workshop_id = workshops.id
    WHERE workshops.id = @workshop_id
    GROUP BY workshops.id, workshops.attendee_limit
  )
END;
GO

DROP FUNCTION IF EXISTS conference_day_attendees; GO
CREATE FUNCTION conference_day_attendees(
  @conference_day_id INT
)
RETURNS TABLE
AS
RETURN (
  SELECT
    attendees.id attendee_id,
    people.*
  FROM attendees
  JOIN people ON people.id = attendees.person_id
  JOIN day_enrollments ON day_enrollments.attendee_id = attendees.id
  JOIN day_bookings ON day_bookings.id = day_enrollments.day_booking_id
  WHERE day_bookings.conference_day_id = @conference_day_id
    AND day_bookings.cancelled_at IS NULL
);
GO

DROP FUNCTION IF EXISTS workshop_attendees; GO
CREATE FUNCTION workshop_attendees(
  @workshop_id INT
)
RETURNS TABLE
AS
RETURN (
  SELECT
    attendees.id attendee_id,
    people.*
  FROM attendees
  JOIN people ON people.id = attendees.person_id
  JOIN day_enrollments ON day_enrollments.attendee_id = attendees.id
  JOIN workshop_bookings ON workshop_bookings.day_booking_id = day_enrollments.day_booking_id
  WHERE workshop_bookings.workshop_id = @workshop_id
    AND workshop_bookings.cancelled_at IS NULL
);
GO

DROP FUNCTION IF EXISTS booking_full_days_cost; GO
CREATE FUNCTION booking_full_days_cost(
  @booking_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT
      SUM(dbo.day_price_on(bookings.conference_id, bookings.created_at) * day_bookings.attendee_count)
    FROM day_bookings
    JOIN bookings ON bookings.id = day_bookings.booking_id
    WHERE booking_id = @booking_id
  )
END;
GO

DROP FUNCTION IF EXISTS booking_full_workshops_cost; GO
CREATE FUNCTION booking_full_workshops_cost(
  @booking_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT
      SUM(workshops.price * workshop_bookings.attendee_count)
    FROM workshop_bookings
    JOIN day_bookings ON day_bookings.id = workshop_bookings.day_booking_id
    JOIN workshops ON workshops.id = workshop_bookings.workshop_id
    WHERE day_bookings.booking_id = @booking_id
  )
END;
GO

DROP FUNCTION IF EXISTS booking_paid_amount; GO
CREATE FUNCTION booking_paid_amount(
  @booking_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT SUM(value)
    FROM booking_payments
    WHERE booking_id = @booking_id
  )
END;
GO

DROP FUNCTION IF EXISTS booking_discount; GO
CREATE FUNCTION booking_discount(
  @booking_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT IIF(individual_clients.student_card_id IS NOT NULL, conferences.student_discount, 0)
    FROM bookings
    JOIN conferences ON conferences.id = bookings.conference_id
    JOIN clients ON clients.id = bookings.client_id
    LEFT JOIN individual_clients ON clients.id = individual_clients.client_id
    WHERE bookings.id = @booking_id
  )
END;
GO

DROP FUNCTION IF EXISTS conference_start_date; GO
CREATE FUNCTION conference_start_date(
  @conference_id INT
)
RETURNS DATE
AS
BEGIN
  RETURN (
    SELECT MIN(date)
    FROM conference_days
    WHERE conference_id = @conference_id
  )
END;
GO

DROP FUNCTION IF EXISTS conference_end_date; GO
CREATE FUNCTION conference_end_date(
  @conference_id INT
)
RETURNS DATE
AS
BEGIN
  RETURN (
    SELECT MAX(date)
    FROM conference_days
    WHERE conference_id = @conference_id
  )
END;
GO

DROP FUNCTION IF EXISTS available_booked_day_spots; GO
CREATE FUNCTION available_booked_day_spots(
  @day_booking_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT
      attendee_count - ISNULL(COUNT(day_enrollments.id), 0)
    FROM day_bookings
    LEFT JOIN day_enrollments ON day_enrollments.day_booking_id = day_bookings.id
    WHERE day_bookings.id = @day_booking_id
    GROUP BY day_bookings.id, day_bookings.attendee_count
  )
END;
GO

DROP FUNCTION IF EXISTS available_booked_workshop_spots; GO
CREATE FUNCTION available_booked_workshop_spots(
  @workshop_booking_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT
      attendee_count - ISNULL(COUNT(workshop_enrollments.id), 0)
    FROM workshop_bookings
    LEFT JOIN workshop_enrollments ON workshop_enrollments.workshop_booking_id = workshop_bookings.id
    WHERE workshop_bookings.id = @workshop_booking_id
    GROUP BY workshop_bookings.id, workshop_bookings.attendee_count
  )
END;
GO
