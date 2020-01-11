-- bookings
DROP INDEX IF EXISTS index_bookings_on_client_id ON bookings;
CREATE INDEX index_bookings_on_client_id ON bookings (client_id);

DROP INDEX IF EXISTS index_bookings_on_conference_id ON bookings;
CREATE INDEX index_bookings_on_conference_id ON bookings (conference_id);

-- day_bookings
DROP INDEX IF EXISTS index_day_bookings_on_booking_id ON day_bookings;
CREATE INDEX index_day_bookings_on_booking_id ON day_bookings (booking_id);

-- workshop_bookings
DROP INDEX IF EXISTS index_workshop_bookings_on_day_booking_id ON workshop_bookings;
CREATE INDEX index_workshop_bookings_on_day_booking_id ON workshop_bookings (day_booking_id);

DROP INDEX IF EXISTS index_workshop_bookings_on_workshop_id ON workshop_bookings;
CREATE INDEX index_workshop_bookings_on_workshop_id ON workshop_bookings (workshop_id);

-- booking_payments
DROP INDEX IF EXISTS index_booking_payments_on_booking_id ON booking_payments;
CREATE INDEX index_booking_payments_on_booking_id ON booking_payments (booking_id);

-- individual_clients
DROP INDEX IF EXISTS index_individual_clients_on_client_id on individual_clients;
CREATE INDEX index_individual_clients_on_client_id ON individual_clients (client_id);