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
  DECLARE @error NVARCHAR(2048) = 'Failed to add the conference. Got error: ' + ERROR_MESSAGE();
  THROW 51000, @error, 1;
END CATCH;
