DROP PROCEDURE IF EXISTS add_conference; GO
CREATE PROCEDURE add_conference
  @name VARCHAR(50),
  @city VARCHAR(50),
  @street VARCHAR(50),
  @postal_code VARCHAR(10),
  @building_number VARCHAR(10),
  @student_discount DECIMAL(5, 4)
AS
BEGIN TRY
  INSERT INTO conferences (name, city, street, postal_code, building_number, student_discount)
  VALUES (@name, @city, @street, @postal_code, @building_number, @student_discount);
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add the conference. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_conference_day; GO
CREATE PROCEDURE add_conference_day
  @conference_id INT,
  @date DATE,
  @attendee_limit INT
AS
BEGIN TRY
  IF NOT EXISTS (SELECT 1 FROM conferences WHERE id = @conference_id)
  BEGIN
    THROW 51000, 'Conference with the given id does not exist.', 1;
  END
  IF EXISTS (SELECT 1 FROM conference_days WHERE conference_id = @conference_id AND date = @date)
  BEGIN
    THROW 51000, 'Conference day for the given date already exists.', 1;
  END
  INSERT INTO conference_days (conference_id, date, attendee_limit)
  VALUES (@conference_id, @date, @attendee_limit);
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add the conference day. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_workshop; GO
CREATE PROCEDURE add_workshop
  @conference_day_id INT,
  @name VARCHAR(50),
  @description VARCHAR(1000),
  @start_time TIME,
  @end_time TIME,
  @room VARCHAR(30),
  @price MONEY,
  @attendee_limit INT
AS
BEGIN TRY
  IF NOT EXISTS (SELECT 1 FROM conference_days WHERE id = @conference_day_id)
  BEGIN
    THROW 51000, 'Conference day with the given id does not exist.', 1;
  END
  INSERT INTO workshops (conference_day_id, name, description, start_time, end_time, room, price, attendee_limit)
  VALUES (@conference_day_id, @name, @description, @start_time, @end_time, @room, @price, @attendee_limit);
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add the workshop. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_conference_price; GO
CREATE PROCEDURE add_conference_price
  @conference_id INT,
  @final_date DATE,
  @price MONEY
AS
BEGIN TRY
  IF NOT EXISTS (SELECT 1 FROM conferences WHERE id = @conference_id)
  BEGIN
    THROW 51000, 'Conference with the given id does not exist.', 1;
  END
  IF EXISTS (SELECT 1 FROM conference_days WHERE conference_id = @conference_id AND @final_date = @final_date)
  BEGIN
    THROW 51000, 'Conference price with the given final date already exists.', 1;
  END
  INSERT INTO conference_prices (conference_id, final_date, price)
  VALUES (@conference_id, @final_date, @price);
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add the conference price. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_company_client; GO
CREATE PROCEDURE add_company_client
  -- Client data
  @city VARCHAR(50),
  @street VARCHAR(50),
  @postal_code VARCHAR(10),
  @building_number VARCHAR(10),
  -- Company specific data
  @name VARCHAR(50),
  @phone VARCHAR(15)
AS
BEGIN TRY
  BEGIN TRANSACTION;
  INSERT INTO clients (city, street, postal_code, building_number)
  VALUES (@city, @street, @postal_code, @building_number);
  DECLARE @client_id INT = SCOPE_IDENTITY();
  INSERT INTO companies (client_id, name, phone)
  VALUES (@client_id, @name, @phone);
  COMMIT TRANSACTION;
END TRY
BEGIN CATCH
  ROLLBACK TRANSACTION;
  DECLARE @error NVARCHAR(2048) = 'Failed to add the client. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_individual_client; GO
CREATE PROCEDURE add_individual_client
  -- Client data
  @city VARCHAR(50),
  @street VARCHAR(50),
  @postal_code VARCHAR(10),
  @building_number VARCHAR(10),
  -- Individual client specific data
  @phone VARCHAR(15),
  @student_card_id VARCHAR(20),
  -- Person data
  @first_name VARCHAR(50),
  @last_name VARCHAR(50),
  @email VARCHAR(50)
AS
BEGIN TRY
  BEGIN TRANSACTION;
  DECLARE @person_id INT;
  EXECUTE ensure_person @first_name, @last_name, @email, @person_id OUTPUT;
  IF EXISTS (SELECT 1 FROM individual_clients WHERE person_id = @person_id)
  BEGIN
    THROW 51000, 'Individual client with the given person data already exists.', 1;
  END
  INSERT INTO clients (city, street, postal_code, building_number)
  VALUES (@city, @street, @postal_code, @building_number);
  DECLARE @client_id INT = SCOPE_IDENTITY();
  INSERT INTO individual_clients (client_id, person_id, phone, student_card_id)
  VALUES (@client_id, @person_id, @phone, @student_card_id);
  COMMIT TRANSACTION;
END TRY
BEGIN CATCH
  ROLLBACK TRANSACTION;
  DECLARE @error NVARCHAR(2048) = 'Failed to add the client. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS ensure_person; GO
CREATE PROCEDURE ensure_person
  @first_name VARCHAR(50),
  @last_name VARCHAR(50),
  @email VARCHAR(50),
  @person_id INT OUTPUT
AS
BEGIN TRY
  SET @person_id = (
    SELECT id FROM people
    WHERE first_name = @first_name AND last_name = @last_name AND email = @email
  );
  IF @person_id IS NULL
  BEGIN
    INSERT INTO people (first_name, last_name, email)
    VALUES (@first_name, @last_name, @email);
    SET @person_id = SCOPE_IDENTITY();
  END
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add the person. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_booking; GO
CREATE PROCEDURE add_booking
  @client_id INT,
  @conference_id INT
AS
BEGIN TRY
  IF NOT EXISTS (SELECT 1 FROM clients WHERE id = @client_id)
  BEGIN
    THROW 51000, 'Client with the given id does not exist.', 1;
  END
  IF NOT EXISTS (SELECT 1 FROM conferences WHERE id = @conference_id)
  BEGIN
    THROW 51000, 'Conference with the given id does not exist.', 1;
  END
  INSERT INTO bookings(client_id, conference_id, created_at)
  VALUES (@client_id, @conference_id, GETDATE());
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add the booking. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_day_booking; GO
CREATE PROCEDURE add_day_booking
  @booking_id INT,
  @conference_day_id INT,
  @attendee_count INT
AS
BEGIN TRY
  IF NOT EXISTS (SELECT 1 FROM bookings WHERE id = @booking_id)
  BEGIN
    THROW 51000, 'Booking with the given id does not exist.', 1;
  END
  IF NOT EXISTS (SELECT 1 FROM conference_days WHERE id = @conference_day_id)
  BEGIN
    THROW 51000, 'Conference day with the given id does not exist.', 1;
  END
  IF EXISTS (SELECT 1 FROM day_bookings WHERE booking_id = @booking_id AND conference_day_id = @conference_day_id)
  BEGIN
    THROW 51000, 'The given conference day is already booked.', 1;
  END
  IF (dbo.available_conference_day_spots(@conference_day_id) = 0)
  BEGIN
    THROW 51000, 'There are no more free spots for the given conference day.', 1;
  END
  INSERT INTO day_bookings(booking_id, conference_day_id, attendee_count)
  VALUES (@booking_id, @conference_day_id, @attendee_count);
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add booking for the conference day. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_workshop_booking; GO
CREATE PROCEDURE add_workshop_booking
  @day_booking_id INT,
  @workshop_id INT,
  @attendee_count INT
AS
BEGIN TRY
  IF NOT EXISTS (SELECT 1 FROM day_bookings WHERE id = @day_booking_id)
  BEGIN
    THROW 51000, 'Day booking with the given id does not exist.', 1;
  END
  IF NOT EXISTS (SELECT 1 FROM workshops WHERE id = @workshop_id)
  BEGIN
    THROW 51000, 'Workshop with the given id does not exist.', 1;
  END
  IF EXISTS (SELECT 1 FROM workshop_bookings WHERE workshop_id = @workshop_id AND day_booking_id = @day_booking_id)
  BEGIN
    THROW 51000, 'The given workshop is already booked.', 1;
  END
  IF (dbo.available_workshop_spots(@workshop_id) = 0)
  BEGIN
    THROW 51000, 'There are no more free spots for the given workshop.', 1;
  END
  INSERT INTO workshop_bookings(day_booking_id, workshop_id, attendee_count)
  VALUES (@day_booking_id, @workshop_id, @attendee_count);
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add booking for the workshop. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_attendee; GO
CREATE PROCEDURE add_attendee
  -- Person data
  @first_name VARCHAR(50),
  @last_name VARCHAR(50),
  @email VARCHAR(50)
AS
BEGIN TRY
  BEGIN TRANSACTION;
  DECLARE @person_id INT;
  EXECUTE ensure_person @first_name, @last_name, @email, @person_id OUTPUT;
  IF EXISTS (SELECT 1 FROM attendees WHERE person_id = @person_id)
  BEGIN
    THROW 51000, 'Attendee with the given person data already exists.', 1;
  END
  INSERT INTO attendees (person_id)
  VALUES (@person_id);
  COMMIT TRANSACTION;
END TRY
BEGIN CATCH
  ROLLBACK TRANSACTION;
  DECLARE @error NVARCHAR(2048) = 'Failed to add attendee. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_day_enrollment; GO
CREATE PROCEDURE add_day_enrollment
  @day_booking_id INT,
  @attendee_id INT
AS
BEGIN TRY
  IF NOT EXISTS (SELECT 1 FROM day_bookings WHERE id = @day_booking_id)
  BEGIN
    THROW 51000, 'Day booking with the given id does not exist.', 1;
  END
  IF NOT EXISTS (SELECT 1 FROM attendees WHERE id = @attendee_id)
  BEGIN
    THROW 51000, 'Attendee with the given id does not exist.', 1;
  END
  IF EXISTS (SELECT 1 FROM day_enrollments WHERE attendee_id = @attendee_id AND day_booking_id = @day_booking_id)
  BEGIN
    THROW 51000, 'The given attendee is already enrolled in the given day.', 1;
  END
  INSERT INTO day_enrollments(day_booking_id, attendee_id)
  VALUES (@day_booking_id, @attendee_id);
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add enrollment for the conference day. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_workshop_enrollment; GO
CREATE PROCEDURE add_workshop_enrollment
  @workshop_booking_id INT,
  @attendee_id INT
AS
BEGIN TRY
  IF NOT EXISTS (SELECT 1 FROM workshop_bookings WHERE id = @workshop_booking_id)
  BEGIN
    THROW 51000, 'Workshop booking with the given id does not exist.', 1;
  END
  IF NOT EXISTS (SELECT 1 FROM attendees WHERE id = @attendee_id)
  BEGIN
    THROW 51000, 'Attendee with the given id does not exist.', 1;
  END
  DECLARE @day_enrollment_id INT = (
    SELECT day_bookings.id
    FROM workshop_bookings
    JOIN day_bookings ON workshop_bookings.day_booking_id = day_bookings.id
    JOIN day_enrollments ON day_bookings.id = day_enrollments.day_booking_id
    WHERE workshop_bookings.id = @workshop_booking_id
      AND day_enrollments.attendee_id = @attendee_id
  );
  IF @day_enrollment_id IS NULL
  BEGIN
    THROW 51000, 'The given attendee is not enrolled in conference day on which the workshop takes place.', 1;
  END
  IF EXISTS (SELECT 1 FROM workshop_enrollments WHERE day_enrollment_id = @day_enrollment_id AND workshop_booking_id = @workshop_booking_id)
  BEGIN
    THROW 51000, 'The given attendee is already enrolled in the given workshop.', 1;
  END
  INSERT INTO workshop_enrollments(day_enrollment_id, workshop_booking_id)
  VALUES (@day_enrollment_id, @workshop_booking_id);
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add enrollment for the workshop. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_booking_payment; GO
CREATE PROCEDURE add_booking_payment
  @booking_id INT,
  @value MONEY
AS
BEGIN TRY
  IF NOT EXISTS (SELECT 1 FROM bookings WHERE id = @booking_id)
  BEGIN
    THROW 51000, 'Booking with the given id does not exist.', 1;
  END
  INSERT INTO booking_payments(booking_id, value, date)
  VALUES (@booking_id, @value, GETDATE());
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to add payment for the given booking. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO

DROP PROCEDURE IF EXISTS add_workshop_interest; GO
CREATE PROCEDURE add_workshop_interest
  @workshop_id INT,
  @booking_id INT
AS
BEGIN TRY
  IF NOT EXISTS (SELECT 1 FROM workshops WHERE id = @workshop_id)
  BEGIN
    THROW 51000, 'Workshop with the given id does not exist.', 1;
  END
  IF NOT EXISTS (SELECT 1 FROM bookings WHERE id = @booking_id)
  BEGIN
    THROW 51000, 'Booking with the given id does not exist.', 1;
  END
  INSERT INTO workshop_interests(workshop_id, booking_id)
  VALUES (@workshop_id, @booking_id);
END TRY
BEGIN CATCH
  DECLARE @error NVARCHAR(2048) = 'Failed to workshop interest. Got an error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
GO
