-- Drop the tables to recreate the database.
DROP TABLE IF EXISTS booking_payments;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS conference_prices;
DROP TABLE IF EXISTS individual_clients;
DROP TABLE IF EXISTS workshop_enrollments;
DROP TABLE IF EXISTS day_enrollments;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS workshop_bookings;
DROP TABLE IF EXISTS day_bookings;
DROP TABLE IF EXISTS workshop_interests;
DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS workshops;
DROP TABLE IF EXISTS conference_days;
DROP TABLE IF EXISTS conferences;

/*
 * Tabela zawierająca organizowane konferencje.
 *
 * id
 * name - nazwa konferencji
 * city, street, postal_code, building_number - dane adresowe
 * student_discount - zniżka studencka z przedziału [0.0000, 1.0000]
 **/
CREATE TABLE conferences (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  street VARCHAR(50) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  building_number VARCHAR(10) NOT NULL,
  student_discount DECIMAL(5, 4) NOT NULL DEFAULT 0
);

/*
 * Tabela zawierająca informacje o poszczególnych dniach konferencji.
 *
 * id
 * conference_id - identyfikator konferencji
 * date - data której dotyczy dzień konferencji
 * attendee_limit - maksymalna liczba uczestników tego dnia
 **/
CREATE TABLE conference_days (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  conference_id INT NOT NULL FOREIGN KEY REFERENCES conferences(id),
  date DATE NOT NULL,
  attendee_limit INT NOT NULL
);

/*
 * Tabela zawiera informacje o warsztatach odbywajacych się w ramach konferencji w konkretnym dniu.
 *
 * id
 * conference_day_id
 * name, description - informacje o warsztacie
 * start, end - przedział czasowy, w którym odbywa się warsztat
 * room - informacja o dokładnym miejscu obywania się warsztatu w budynku konferencji
 * price - stała cena za warsztat
 * attendee_limit - maksymalna liczba uczestników tego warsztatu
 **/
CREATE TABLE workshops (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  conference_day_id INT NOT NULL FOREIGN KEY REFERENCES conference_days(id),
  name VARCHAR(50) NOT NULL,
  description VARCHAR(1000) NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  room VARCHAR(30) NOT NULL,
  price MONEY NOT NULL,
  attendee_limit INT NOT NULL
);

/*
 * Tabela zawiera progi cenowe za jeden dzień konferencji w zależności od czasu.
 *
 * id
 * conference_id
 * final_date - data do której obowiązuje dana cena
 * price - cena w danym czasie
 **/
CREATE TABLE conference_prices (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  conference_id INT NOT NULL FOREIGN KEY REFERENCES conferences(id),
  final_date DATE NOT NULL,
  price MONEY NOT NULL
);

/*
 * Tabela zawiera podstawowe dane o klientach dokonujących rezerwacji.
 *
 * id
 * city, street, postal_code, building_number - dane adresowe klienta
 **/
CREATE TABLE clients (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  city VARCHAR(50) NOT NULL,
  street VARCHAR(50) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  building_number VARCHAR(10) NOT NULL
);

/*
 * Tabela zawiera dodatkowe dane firm będących klientami.
 *
 * id
 * client_id
 * name - nazwa firmy
 * phone - numer telefonu firmy
 **/
CREATE TABLE companies (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  client_id INT NOT NULL FOREIGN KEY REFERENCES clients(id),
  name VARCHAR(50) NOT NULL,
  phone VARCHAR(15) NOT NULL
);

/*
 * Tabela zawiera podstawowe dane osobowe.
 *
 * id
 * first_name, last_name - nazwa osoby
 * email - adres email osoby
 **/
CREATE TABLE people (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);

/*
 * Tabela zwiera dodatkowe dane osób będących klientami indywidualnymi.
 *
 * id
 * client_id
 * person_id
 * phone - numer telefonu klienta indywidualnego
 * student_card_id - numer karty studenckiej lub NULL jeżeli klient nie jest studentem
 **/
CREATE TABLE individual_clients (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  client_id INT NOT NULL FOREIGN KEY REFERENCES clients(id),
  person_id INT NOT NULL FOREIGN KEY REFERENCES people(id),
  phone VARCHAR(15) NOT NULL,
  student_card_id VARCHAR(20)
);

/*
 * Tabela zawiera informacje o rezerwacjach dokonywanych przez klientów.
 *
 * id
 * client_id
 * created_at - czas dokonania rezerwacji
 * cancelled_at - czas anulowania rezerwacji lub NULL jeżeli rezerwacja nie została anulowana
 **/
CREATE TABLE bookings (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  client_id INT NOT NULL FOREIGN KEY REFERENCES clients(id),
  created_at DATETIME NOT NULL,
  cancelled_at DATETIME DEFAULT NULL
);

/*
 * Tabela zawiera informacje o rezerwacjach na wybrane dni dokonywanych przez klientów.
 *
 * id
 * booking_id
 * conference_day_id
 * attendee_count - zarezerwowana liczba miejsc na dany dzień konferencji
 * cancelled_at - czas anulowania rezerwacji na dany dzień lub NULL jeżeli rezerwacja nie została anulowana
 **/
CREATE TABLE day_bookings (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  booking_id INT NOT NULL FOREIGN KEY REFERENCES bookings(id),
  conference_day_id INT NOT NULL FOREIGN KEY REFERENCES conference_days(id),
  attendee_count INT NOT NULL,
  cancelled_at DATETIME DEFAULT NULL
);

/*
 * Tabela zawiera informacje o rezerwacjach na wybrane warsztaty dokonywanych przez klientów.
 *
 * id
 * day_booking_id
 * workshop_id
 * attendee_count - zarezerwowana liczba miejsc na dany warsztat
 * cancelled_at - czas anulowania rezerwacji na dany warsztat lub NULL jeżeli rezerwacja nie została anulowana
 **/
CREATE TABLE workshop_bookings (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  day_booking_id INT NOT NULL FOREIGN KEY REFERENCES day_bookings(id),
  workshop_id INT NOT NULL FOREIGN KEY REFERENCES workshops(id),
  attendee_count INT NOT NULL,
  cancelled_at DATETIME DEFAULT NULL
);

/*
 * Tabela wiąże rezerwacje na dany dzień konferencji z odpowiadającymi im uczestnikami.
 *
 * id
 * day_booking_id
 * attendee_id
 **/
CREATE TABLE day_enrollments (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  day_booking_id INT NOT NULL FOREIGN KEY REFERENCES day_bookings(id),
  attendee_id INT NOT NULL FOREIGN KEY REFERENCES people(id)
);

/*
 * Tabela wiąże rezerwacje na dany warsztat z zapisami na dany dzień, czyli pośrednio z odpowiadającymi im uczestnikami.
 *
 * id
 * day_enrollment_id
 * workshop_booking_id
 **/
CREATE TABLE workshop_enrollments (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  day_enrollment_id INT NOT NULL FOREIGN KEY REFERENCES day_enrollments(id),
  workshop_booking_id INT NOT NULL FOREIGN KEY REFERENCES workshop_bookings(id)
);


/*
 * Tabela zawiera informacje o płatnościach za rezerwacje.
 *
 * id
 * booking_id
 * value - wpłacona kwota
 * date - czas dokonania płatności
 **/
CREATE TABLE booking_payments (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  booking_id INT NOT NULL FOREIGN KEY REFERENCES bookings(id),
  value MONEY NOT NULL,
  date DATETIME NOT NULL
);

/*
 * Tabela zawiera informacje o warsztatach, którymi są zainteresowani klienci w ramach zamówienia.
 *
 * id
 * workshop_id
 * booking_id
 **/
CREATE TABLE workshop_interests (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  workshop_id INT NOT NULL FOREIGN KEY REFERENCES workshops(id),
  booking_id INT NOT NULL FOREIGN KEY REFERENCES bookings(id)
);
