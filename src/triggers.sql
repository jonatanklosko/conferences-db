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
