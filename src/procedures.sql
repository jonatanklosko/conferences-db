DROP PROCEDURE IF EXISTS add_conference;
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

DROP PROCEDURE IF EXISTS add_conference_day;
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

DROP PROCEDURE IF EXISTS add_workshop;
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

DROP PROCEDURE IF EXISTS add_conference_price;
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
