DROP TRIGGER IF EXISTS validate_workshop_attendee_limit_not_over_day_limit
GO
CREATE TRIGGER validate_workshop_attendee_limit_not_over_day_limit
ON workshops
AFTER INSERT, UPDATE
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_workshops
    JOIN conference_days ON conference_days.id = inserted_workshops.conference_day_id
    WHERE conference_days.attendee_limit < inserted_workshops.attendee_limit
  )
  BEGIN
    THROW 51000, 'Workshop cannot have greater attendee limit than its conference day.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_conference_day_attendee_limit_not_under_workshop_limit
GO
CREATE TRIGGER validate_conference_day_attendee_limit_not_under_workshop_limit
ON conference_days
AFTER UPDATE
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_conference_days
    JOIN workshops ON workshops.conference_day_id = inserted_conference_days.id
    WHERE inserted_conference_days.attendee_limit < workshops.attendee_limit
  )
  BEGIN
    THROW 51000, 'Conference day cannot have lower attendee limit than its workshops.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS propagate_booking_cancellation
GO
CREATE TRIGGER propagate_booking_cancellation
ON bookings
AFTER UPDATE
AS
BEGIN
  IF UPDATE(cancelled_at)
  BEGIN
    UPDATE day_bookings
    SET day_bookings.cancelled_at = updated_bookings.cancelled_at
    FROM inserted updated_bookings
    JOIN day_bookings ON day_bookings.booking_id = updated_bookings.id;
  END
END;
GO

DROP TRIGGER IF EXISTS propagate_day_booking_cancellation
GO
CREATE TRIGGER propagate_day_booking_cancellation
ON day_bookings
AFTER UPDATE
AS
BEGIN
  IF UPDATE(cancelled_at)
  BEGIN
    UPDATE workshop_bookings
    SET workshop_bookings.cancelled_at = updated_day_bookings.cancelled_at
    FROM inserted updated_day_bookings
    JOIN workshop_bookings ON workshop_bookings.day_booking_id = updated_day_bookings.id;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_new_day_booking_has_noncancelled_booking
GO
CREATE TRIGGER validate_new_day_booking_has_noncancelled_booking
ON day_bookings
AFTER INSERT
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_day_bookings
    JOIN bookings ON bookings.id = inserted_day_bookings.booking_id
    WHERE bookings.cancelled_at IS NOT NULL
  )
  BEGIN
    THROW 51000, 'Cannot add day booking to a cancelled booking.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_new_workshop_booking_has_noncancelled_day_booking
GO
CREATE TRIGGER validate_new_workshop_booking_has_noncancelled_day_booking
ON workshop_bookings
AFTER INSERT
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_workshop_bookings
    JOIN day_bookings ON day_bookings.id = inserted_workshop_bookings.day_booking_id
    WHERE day_bookings.cancelled_at IS NOT NULL
  )
  BEGIN
    THROW 51000, 'Cannot add workshop booking to a cancelled day booking.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_new_booking_payment_has_noncancelled_booking
GO
CREATE TRIGGER validate_new_booking_payment_has_noncancelled_booking
ON booking_payments
AFTER INSERT
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_booking_payments
    JOIN bookings ON bookings.id = inserted_booking_payments.booking_id
    WHERE bookings.cancelled_at IS NOT NULL
  )
  BEGIN
    THROW 51000, 'Cannot add booking payment to a cancelled booking.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_new_day_booking_attendee_count_not_over_limit
GO
CREATE TRIGGER validate_new_day_booking_attendee_count_not_over_limit
ON day_bookings
AFTER INSERT, UPDATE
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_day_bookings
    WHERE dbo.available_conference_day_spots(inserted_day_bookings.conference_day_id) < 0
  )
  BEGIN
    THROW 51000, 'Not enough spots available for the conference day.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_new_workshop_booking_attendee_count_not_over_limit
GO
CREATE TRIGGER validate_new_workshop_booking_attendee_count_not_over_limit
ON workshop_bookings
AFTER INSERT, UPDATE
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_workshop_bookings
    WHERE dbo.available_workshop_spots(inserted_workshop_bookings.workshop_id) < 0
  )
  BEGIN
    THROW 51000, 'Not enough spots available for the workshop.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_new_day_enrollment_within_booked_limit
GO
CREATE TRIGGER validate_new_day_enrollment_within_booked_limit
ON day_enrollments
AFTER INSERT
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_day_enrollments
    WHERE dbo.available_booked_day_spots(inserted_day_enrollments.day_booking_id) < 0
  )
  BEGIN
    THROW 51000, 'Not enough spots booked for the conference day to enroll in it.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_new_workshop_enrollment_within_booked_limit
GO
CREATE TRIGGER validate_new_workshop_enrollment_within_booked_limit
ON workshop_enrollments
AFTER INSERT
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_workshop_enrollments
    WHERE dbo.available_booked_workshop_spots(inserted_workshop_enrollments.workshop_booking_id) < 0
  )
  BEGIN
    THROW 51000, 'Not enough spots booked for the workshop to enroll in it.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_day_booking_within_proper_conference
GO
CREATE TRIGGER validate_day_booking_within_proper_conference
ON day_bookings
AFTER INSERT, UPDATE
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_day_bookings
    JOIN bookings ON bookings.id = inserted_day_bookings.booking_id
    JOIN conference_days ON conference_days.id = inserted_day_bookings.conference_day_id
    WHERE conference_days.conference_id != bookings.conference_id
  )
  BEGIN
    THROW 51000, 'Cannot book a day in a different conference than the booking one.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_workshop_booking_within_proper_day_booking
GO
CREATE TRIGGER validate_workshop_booking_within_proper_day_booking
ON workshop_bookings
AFTER INSERT, UPDATE
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_workshop_bookings
    JOIN workshops ON workshops.id = inserted_workshop_bookings.workshop_id
    JOIN day_bookings ON day_bookings.id = inserted_workshop_bookings.day_booking_id
    WHERE day_bookings.conference_day_id != workshops.conference_day_id
  )
  BEGIN
    THROW 51000, 'Cannot book a workshop on a different day than the day booking.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_booking_date_before_conference_start
GO
CREATE TRIGGER validate_booking_date_before_conference_start
ON bookings
AFTER INSERT
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_bookings
    WHERE inserted_bookings.created_at > dbo.conference_start_date(inserted_bookings.conference_id)
  )
  BEGIN
    THROW 51000, 'Cannot add booking after conference start.', 1;
  END
END;
GO

DROP TRIGGER IF EXISTS validate_attendee_workshops_do_not_overlap
GO
CREATE TRIGGER validate_attendee_workshops_do_not_overlap
ON workshop_enrollments
AFTER INSERT, UPDATE
AS
BEGIN
  IF EXISTS (
    SELECT 1
    FROM inserted inserted_workshop_enrollments
    JOIN day_enrollments de1 ON de1.id = inserted_workshop_enrollments.day_enrollment_id
    JOIN workshop_bookings wb1 ON wb1.id = inserted_workshop_enrollments.workshop_booking_id
    WHERE EXISTS (
      SELECT 1
      FROM workshop_enrollments
      JOIN day_enrollments de2 ON de2.id = workshop_enrollments.day_enrollment_id
      JOIN workshop_bookings wb2 ON wb2.id = workshop_enrollments.workshop_booking_id
      WHERE de1.attendee_id = de2.attendee_id
        AND wb1.workshop_id != wb2.workshop_id
        AND dbo.workshops_overlap(wb1.workshop_id, wb2.workshop_id) = 1
    )
  )
  BEGIN
    THROW 51000, 'Attendee cannot enroll in two overlapping workshops.', 1;
  END
END;
GO
