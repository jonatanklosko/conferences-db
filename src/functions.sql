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
END
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

DROP FUNCTION IF EXISTS workshop_day_attendees; GO
CREATE FUNCTION workshop_day_attendees(
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
