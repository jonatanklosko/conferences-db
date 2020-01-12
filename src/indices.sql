-- workshops
DROP INDEX IF EXISTS index_workshops_on_conference_day_id ON workshops;
CREATE INDEX index_workshops_on_conference_day_id ON workshops (conference_day_id);

-- bookings
DROP INDEX IF EXISTS index_bookings_on_conference_id ON bookings;
CREATE INDEX index_bookings_on_conference_id ON bookings (conference_id);

DROP INDEX IF EXISTS index_bookings_on_cancelled_at ON bookings;
CREATE INDEX index_bookings_on_cancelled_at ON bookings (cancelled_at);

-- day_bookings
DROP INDEX IF EXISTS index_day_bookings_on_booking_id ON day_bookings;
CREATE INDEX index_day_bookings_on_booking_id ON day_bookings (booking_id);

DROP INDEX IF EXISTS index_day_bookings_on_cancelled_at ON day_bookings;
CREATE INDEX index_day_bookings_on_cancelled_at ON day_bookings (cancelled_at);

-- workshop_bookings
DROP INDEX IF EXISTS index_workshop_bookings_on_day_booking_id ON workshop_bookings;
CREATE INDEX index_workshop_bookings_on_day_booking_id ON workshop_bookings (day_booking_id);

DROP INDEX IF EXISTS index_workshop_bookings_on_cancelled_at ON workshop_bookings;
CREATE INDEX index_workshop_bookings_on_cancelled_at ON workshop_bookings (cancelled_at);

-- day_enrollments
DROP INDEX IF EXISTS index_day_enrollments_on_day_booking_id ON day_enrollments;
CREATE INDEX index_day_enrollments_on_day_booking_id ON day_enrollments (day_booking_id);

-- workshop_enrollments
DROP INDEX IF EXISTS index_workshop_enrollments_on_day_enrollment_id ON workshop_enrollments;
CREATE INDEX index_workshop_enrollments_on_day_enrollment_id ON workshop_enrollments (day_enrollment_id);

-- booking_payments
DROP INDEX IF EXISTS index_booking_payments_on_booking_id ON booking_payments;
CREATE INDEX index_booking_payments_on_booking_id ON booking_payments (booking_id);

-- individual_clients
DROP INDEX IF EXISTS index_individual_clients_on_client_id on individual_clients;
CREATE INDEX index_individual_clients_on_client_id ON individual_clients (client_id);
