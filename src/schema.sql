-- Drop the tables to recreate the database.
DROP TABLE IF EXISTS booking_payments;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS conference_prices;
DROP TABLE IF EXISTS individual_clients;
DROP TABLE IF EXISTS workshop_enrollments;
DROP TABLE IF EXISTS day_enrollments;
DROP TABLE IF EXISTS attendees;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS workshop_bookings;
DROP TABLE IF EXISTS day_bookings;
DROP TABLE IF EXISTS workshop_interests;
DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS workshops;
DROP TABLE IF EXISTS conference_days;
DROP TABLE IF EXISTS conferences;

CREATE TABLE conferences (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  street VARCHAR(50) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  building_number VARCHAR(10) NOT NULL,
  student_discount DECIMAL(5, 4) NOT NULL DEFAULT 0

  CONSTRAINT conferences__student_discount_in_range CHECK (student_discount BETWEEN 0 AND 1)
);

CREATE TABLE conference_days (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  conference_id INT NOT NULL FOREIGN KEY REFERENCES conferences(id),
  date DATE NOT NULL,
  attendee_limit INT NOT NULL,

  CONSTRAINT conference_days__unique_date_within_conference UNIQUE (conference_id, date),
  CONSTRAINT conference_days__positive_attendee_limit CHECK (attendee_limit > 0)
);

CREATE TABLE workshops (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  conference_day_id INT NOT NULL FOREIGN KEY REFERENCES conference_days(id),
  name VARCHAR(50) NOT NULL,
  description VARCHAR(1000) NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  room VARCHAR(30) NOT NULL,
  price MONEY NOT NULL,
  attendee_limit INT NOT NULL,

  CONSTRAINT workshops__positive_attendee_limit CHECK (attendee_limit > 0),
  CONSTRAINT workshops__positive_price CHECK (price > 0)
);

CREATE TABLE conference_prices (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  conference_id INT NOT NULL FOREIGN KEY REFERENCES conferences(id),
  final_date DATE NOT NULL,
  price MONEY NOT NULL,

  CONSTRAINT conference_prices__positive_price CHECK (price > 0),
  CONSTRAINT conference_prices__unique_final_date_within_conference UNIQUE (conference_id, final_date)
);

CREATE TABLE clients (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  city VARCHAR(50) NOT NULL,
  street VARCHAR(50) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  building_number VARCHAR(10) NOT NULL
);

CREATE TABLE companies (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  client_id INT NOT NULL FOREIGN KEY REFERENCES clients(id),
  name VARCHAR(50) NOT NULL,
  phone VARCHAR(15) NOT NULL,

  CONSTRAINT companies__unique_phone UNIQUE (phone)
);

CREATE TABLE people (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,

  CONSTRAINT people__unique_email UNIQUE (email)
);

CREATE TABLE individual_clients (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  client_id INT NOT NULL FOREIGN KEY REFERENCES clients(id),
  person_id INT NOT NULL FOREIGN KEY REFERENCES people(id),
  phone VARCHAR(15) NOT NULL,
  student_card_id VARCHAR(20),

  CONSTRAINT individual_clients__unique_phone UNIQUE (phone)
);

CREATE TABLE bookings (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  client_id INT NOT NULL FOREIGN KEY REFERENCES clients(id),
  conference_id INT NOT NULL FOREIGN KEY REFERENCES conferences(id),
  created_at DATETIME NOT NULL,
  cancelled_at DATETIME DEFAULT NULL,

  CONSTRAINT bookings__unique_client_within_conference UNIQUE (client_id, conference_id)
);

CREATE TABLE day_bookings (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  booking_id INT NOT NULL FOREIGN KEY REFERENCES bookings(id),
  conference_day_id INT NOT NULL FOREIGN KEY REFERENCES conference_days(id),
  attendee_count INT NOT NULL,
  cancelled_at DATETIME DEFAULT NULL,

  CONSTRAINT day_bookings__positive_attendee_count CHECK (attendee_count > 0),
  CONSTRAINT day_bookings__unique_conference_day_within_booking UNIQUE (conference_day_id, booking_id)
);

CREATE TABLE workshop_bookings (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  day_booking_id INT NOT NULL FOREIGN KEY REFERENCES day_bookings(id),
  workshop_id INT NOT NULL FOREIGN KEY REFERENCES workshops(id),
  attendee_count INT NOT NULL,
  cancelled_at DATETIME DEFAULT NULL,

  CONSTRAINT workshop_bookings__positive_attendee_count CHECK (attendee_count > 0),
  CONSTRAINT workshop_bookings__unique_workshop_within_day_booking UNIQUE (workshop_id, day_booking_id)
);

CREATE TABLE attendees (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  person_id INT NOT NULL FOREIGN KEY REFERENCES people(id)
);

CREATE TABLE day_enrollments (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  day_booking_id INT NOT NULL FOREIGN KEY REFERENCES day_bookings(id),
  attendee_id INT NOT NULL FOREIGN KEY REFERENCES attendees(id),

  CONSTRAINT day_enrollments__unique_attendee_within_day_booking UNIQUE (attendee_id, day_booking_id)
);

CREATE TABLE workshop_enrollments (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  day_enrollment_id INT NOT NULL FOREIGN KEY REFERENCES day_enrollments(id),
  workshop_booking_id INT NOT NULL FOREIGN KEY REFERENCES workshop_bookings(id),

  CONSTRAINT workshop_enrollments__unique_workshop_within_day_enrollment UNIQUE (workshop_booking_id, day_enrollment_id)
);

CREATE TABLE booking_payments (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  booking_id INT NOT NULL FOREIGN KEY REFERENCES bookings(id),
  value MONEY NOT NULL,
  date DATETIME NOT NULL,

  CONSTRAINT booking_payments__positive_value CHECK (value > 0)
);

CREATE TABLE workshop_interests (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  workshop_id INT NOT NULL FOREIGN KEY REFERENCES workshops(id),
  booking_id INT NOT NULL FOREIGN KEY REFERENCES bookings(id),

  CONSTRAINT workshop_interests__unique_workshop_within_booking UNIQUE (workshop_id, booking_id)
);
