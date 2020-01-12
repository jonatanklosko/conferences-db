DROP TRIGGER IF EXISTS propagate_booking_cancellation_trigger; GO
CREATE TRIGGER propagate_booking_cancellation_trigger
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

DROP TRIGGER IF EXISTS propagate_day_booking_cancellation_trigger; GO
CREATE TRIGGER propagate_day_booking_cancellation_trigger
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

DROP TRIGGER IF EXISTS validate_new_day_booking_not_cancelled_trigger; GO
CREATE TRIGGER validate_new_day_booking_not_cancelled_trigger
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

DROP TRIGGER IF EXISTS validate_new_workshop_booking_not_cancelled_trigger; GO
CREATE TRIGGER validate_new_workshop_booking_not_cancelled_trigger
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

DROP TRIGGER IF EXISTS validate_new_booking_payment_not_cancelled_trigger; GO
CREATE TRIGGER validate_new_booking_payment_not_cancelled_trigger
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

DROP TRIGGER IF EXISTS validate_new_day_booking_enough_spots_trigger; GO
CREATE TRIGGER validate_new_day_booking_enough_spots_trigger
ON day_bookings
AFTER INSERT
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

DROP TRIGGER IF EXISTS validate_new_workshop_booking_enough_spots_trigger; GO
CREATE TRIGGER validate_new_workshop_booking_enough_spots_trigger
ON workshop_bookings
AFTER INSERT
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

DROP TRIGGER IF EXISTS validate_new_day_enrollment_enough_spots_trigger; GO
CREATE TRIGGER validate_new_day_enrollment_enough_spots_trigger
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

DROP TRIGGER IF EXISTS validate_new_workshop_enrollment_enough_booked_spots_trigger; GO
CREATE TRIGGER validate_new_workshop_enrollment_enough_booked_spots_trigger
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
