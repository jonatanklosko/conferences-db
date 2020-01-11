## Projekt

### Diagram ER

![Diagram ER](./img/er_diagram.svg)

### Schemat

![Schemat](./img/schema.svg)

## Tabele

### `conferences`
Tabela zawierająca organizowane konferencje.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `name` | nazwa konferencji |
| `city`, `street`, `postal_code`, `building_number` | dane adresowe |
| `student_discount` | zniżka studencka z przedziału [0.0000, 1.0000] |

Dodatkowe warunki integralności:
- `conferences__student_discount_in_range` - zapewnia, że zniżka studencka należy do właściwego przedziału

```sql
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
```

### `conference_days`

Tabela zawierająca informacje o poszczególnych dniach konferencji.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `conference_id` | identyfikator konferencji |
| `date` | data której dotyczy dzień konferencji |
| `attendee_limit` | maksymalna liczba uczestników tego dnia |

Dodatkowe warunki integralności:
- `conference_days__unique_date_within_conference` - zapewnia, że dana konferencja nie ma wielu dni o tej samej dacie
- `conference_days__positive_attendee_limit` - zapewnia, że limit uczestników jest liczbą dodatnią

```sql
CREATE TABLE conference_days (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  conference_id INT NOT NULL FOREIGN KEY REFERENCES conferences(id),
  date DATE NOT NULL,
  attendee_limit INT NOT NULL,

  CONSTRAINT conference_days__unique_date_within_conference UNIQUE (conference_id, date),
  CONSTRAINT conference_days__positive_attendee_limit CHECK (attendee_limit > 0)
);
```

### `workshops`

Tabela zawierająca informacje o warsztatach odbywajacych się w ramach konferencji w konkretnym dniu.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `conference_day_id` | identyfikator dnia konferencji |
| `name`, `description` | informacje o warsztacie |
| `start`, `end` | przedział czasowy, w którym odbywa się warsztat |
| `room` | informacja o dokładnym miejscu obywania się warsztatu w budynku konferencji |
| `price` | stała cena za warsztat |
| `attendee_limit` | maksymalna liczba uczestników tego warsztatu |

Dodatkowe warunki integralności:
- `workshops__positive_attendee_limit` - zapewnia, że limit uczestników jest liczbą dodatnią
- `workshops__positive_price` - zapewnia, że cena warsztatu jest liczbą dodatnią

```sql
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
```

### `conference_prices`

Tabela zawierająca progi cenowe za jeden dzień konferencji w zależności od czasu.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `conference_id` | identyfikator konferencji |
| `final_date` | data do której obowiązuje dana cena |
| `price` | cena w danym czasie |

Dodatkowe warunki integralności:
- `conference_prices__positive_price` - zapewnia, że cena jest liczbą dodatnią
- `conference_prices__unique_final_date_within_conference` - zapewnia, że dana konferencja nie ma wielu progów cenowych obowiazujących do tej samej daty

```sql
CREATE TABLE conference_prices (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  conference_id INT NOT NULL FOREIGN KEY REFERENCES conferences(id),
  final_date DATE NOT NULL,
  price MONEY NOT NULL,

  CONSTRAINT conference_prices__positive_price CHECK (price > 0),
  CONSTRAINT conference_prices__unique_final_date_within_conference UNIQUE (conference_id, final_date)
);
```

### `clients`

Tabela zawierająca podstawowe dane o klientach dokonujących rezerwacji.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `city`, `street`, `postal_code`, `building_number` | dane adresowe klienta |

```sql
CREATE TABLE clients (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  city VARCHAR(50) NOT NULL,
  street VARCHAR(50) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  building_number VARCHAR(10) NOT NULL
);
```

### `companies`

Tabela zawierająca dodatkowe dane firm będących klientami.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `client_id` | identyfikator klienta |
| `name` | nazwa firmy |
| `phone` | numer telefonu firmy |

Dodatkowe warunki integralności:
- `companies__unique_phone` - zapewnia, że numer telefonu firmy jest unikalny

```sql
CREATE TABLE companies (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  client_id INT NOT NULL FOREIGN KEY REFERENCES clients(id),
  name VARCHAR(50) NOT NULL,
  phone VARCHAR(15) NOT NULL,

  CONSTRAINT companies__unique_phone UNIQUE (phone)
);
```

### `people`

Tabela zawierająca podstawowe dane osobowe.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `first_name`, `last_name` | imię i nazwisko osoby |
| `email` | adres email osoby |

Dodatkowe warunki integralności:
- `people__unique_email` - zapewnia, że adres email osoby jest unikalny

```sql
CREATE TABLE people (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,

  CONSTRAINT people__unique_email UNIQUE (email)
);
```

### `individual_clients`

Tabela zwiera dodatkowe dane osób będących klientami indywidualnymi.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `client_id` | identyfikator klienta |
| `person_id` | identyfikator osoby |
| `phone` | numer telefonu klienta indywidualnego |
| `student_card_id` | numer karty studenckiej lub NULL jeżeli klient nie jest studentem |

Dodatkowe warunki integralności:
- `individual_clients__unique_phone` - zapewnia, że numer telefonu klienta indywidualnego jest unikalny

```sql
CREATE TABLE individual_clients (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  client_id INT NOT NULL FOREIGN KEY REFERENCES clients(id),
  person_id INT NOT NULL FOREIGN KEY REFERENCES people(id),
  phone VARCHAR(15) NOT NULL,
  student_card_id VARCHAR(20),

  CONSTRAINT individual_clients__unique_phone UNIQUE (phone)
);
```

### `bookings`

Tabela zawierająca informacje o rezerwacjach dokonywanych przez klientów.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `client_id` | identyfikator klienta |
| `created_at` | czas dokonania rezerwacji |
| `cancelled_at` | czas anulowania rezerwacji lub NULL jeżeli rezerwacja nie została anulowana |

Dodatkowe warunki integralności:
- `bookings__unique_client_within_conference` - zapewnia, że dana konferencja nie ma wielu rezerwacji tego samego klienta

```sql
CREATE TABLE bookings (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  client_id INT NOT NULL FOREIGN KEY REFERENCES clients(id),
  conference_id INT NOT NULL FOREIGN KEY REFERENCES conferences(id),
  created_at DATETIME NOT NULL,
  cancelled_at DATETIME DEFAULT NULL,

  CONSTRAINT bookings__unique_client_within_conference UNIQUE (client_id, conference_id)
);
```

### `day_bookings`

Tabela zawierająca informacje o rezerwacjach na wybrane dni dokonywanych przez klientów.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `booking_id` | identyfikator rezerwacji |
| `conference_day_id` | identyfikator dnia konferencji |
| `attendee_count` | zarezerwowana liczba miejsc na dany dzień konferencji |
| `cancelled_at` | czas anulowania rezerwacji na dany dzień lub NULL jeżeli rezerwacja nie została anulowana |

Dodatkowe warunki integralności:
- `day_bookings__positive_attendee_count` - zapewnia, że zarezerwowana liczba miejsc na dzień konferencji jest dodatnia
- `day_bookings__unique_conference_day_within_booking` - zapewnia, że dane zamówienie nie ma wielu rezerwacji na ten same dzień

```sql
CREATE TABLE day_bookings (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  booking_id INT NOT NULL FOREIGN KEY REFERENCES bookings(id),
  conference_day_id INT NOT NULL FOREIGN KEY REFERENCES conference_days(id),
  attendee_count INT NOT NULL,
  cancelled_at DATETIME DEFAULT NULL,

  CONSTRAINT day_bookings__positive_attendee_count CHECK (attendee_count > 0),
  CONSTRAINT day_bookings__unique_conference_day_within_booking UNIQUE (conference_day_id, booking_id)
);
```

### `workshop_bookings`

Tabela zawierająca informacje o rezerwacjach na wybrane warsztaty dokonywanych przez klientów.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `day_booking_id` | identyfikator rezerwacji na dzień konferencji |
| `workshop_id` | identyfikator warsztatu |
| `attendee_count` | zarezerwowana liczba miejsc na dany warsztat |
| `cancelled_at` | czas anulowania rezerwacji na dany warsztat lub NULL jeżeli rezerwacja nie została anulowana |

Dodatkowe warunki integralności:
- `workshop_bookings__positive_attendee_count` - zapewnia, że zarezerwowana liczba miejsc na warsztat jest dodatnia
- `workshop_bookings__unique_workshop_within_day_booking` - zapewnia, że dana rezerwacja na dzień konferencji nie ma wielu rezerwacji na ten sam warsztat

```sql
CREATE TABLE workshop_bookings (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  day_booking_id INT NOT NULL FOREIGN KEY REFERENCES day_bookings(id),
  workshop_id INT NOT NULL FOREIGN KEY REFERENCES workshops(id),
  attendee_count INT NOT NULL,
  cancelled_at DATETIME DEFAULT NULL,

  CONSTRAINT workshop_bookings__positive_attendee_count CHECK (attendee_count > 0),
  CONSTRAINT workshop_bookings__unique_workshop_within_day_booking UNIQUE (workshop_id, day_booking_id)
);
```

### `attendees`

Tabela zawierająca informacje o uczestnikach konferencji.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `person_id` | identyfikator osoby (dane osobowe) |

```sql
CREATE TABLE attendees (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  person_id INT NOT NULL FOREIGN KEY REFERENCES people(id)
);
```

### `day_enrollments`

Tabela wiążąca rezerwacje na dany dzień konferencji z odpowiadającymi im uczestnikami.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `day_booking_id` | identyfikator rezerwacji na dzień konferencji |
| `attendee_id` | identyfikator uczestnika |

Dodatkowe warunki integralności:
- `day_enrollments__unique_attendee_within_day_booking` - zapewnia, że dana rezerwacja na dzień nie ma powielonych uczestników

```sql
CREATE TABLE day_enrollments (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  day_booking_id INT NOT NULL FOREIGN KEY REFERENCES day_bookings(id),
  attendee_id INT NOT NULL FOREIGN KEY REFERENCES attendees(id),

  CONSTRAINT day_enrollments__unique_attendee_within_day_booking UNIQUE (attendee_id, day_booking_id)
);
```

### `workshop_enrollments`

Tabela wiążąca rezerwacje na dany warsztat z zapisami na dany dzień, czyli pośrednio z odpowiadającymi im uczestnikami.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `day_enrollment_id` | identyfikator zapisu na dany dzień |
| `workshop_booking_id` | identyfikator rezerwacji na warsztat |

Dodatkowe warunki integralności:
- `workshop_enrollments__unique_workshop_within_day_enrollment` - zapewnia, że dana rezerwacja na dzień nie ma wielu tych samych warsztatów

```sql
CREATE TABLE workshop_enrollments (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  day_enrollment_id INT NOT NULL FOREIGN KEY REFERENCES day_enrollments(id),
  workshop_booking_id INT NOT NULL FOREIGN KEY REFERENCES workshop_bookings(id),

  CONSTRAINT workshop_enrollments__unique_workshop_within_day_enrollment UNIQUE (workshop_booking_id, day_enrollment_id)
);
```

### `booking_payments`

Tabela zawierająca informacje o płatnościach za rezerwacje.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `booking_id` | identyfikator rezerwacji |
| `value` | wpłacona kwota |
| `date` | czas dokonania płatności |

Dodatkowe warunki integralności:
- `booking_payments__positive_value` - zapewnia, że zapłacona kwota jest dodatnia

```sql
CREATE TABLE booking_payments (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  booking_id INT NOT NULL FOREIGN KEY REFERENCES bookings(id),
  value MONEY NOT NULL,
  date DATETIME NOT NULL,

  CONSTRAINT booking_payments__positive_value CHECK (value > 0)
);
```

### `workshop_interests`

Tabela zawierająca informacje o warsztatach, którymi są zainteresowani klienci w ramach rezerwacji.

| Kolumna | Opis |
| --- | --- |
| `id` | unikalny identyfikator |
| `workshop_id` | identyfikator warsztatu |
| `booking_id` | identyfikator rezerwacji |

Dodatkowe warunki integralności:
- `workshop_interests__unique_workshop_within_booking` - zapewnia, że dana rezerwacja nie ma wielu zainteresowań tym samym warsztatem

```sql
CREATE TABLE workshop_interests (
  id INT NOT NULL IDENTITY PRIMARY KEY,
  workshop_id INT NOT NULL FOREIGN KEY REFERENCES workshops(id),
  booking_id INT NOT NULL FOREIGN KEY REFERENCES bookings(id),

  CONSTRAINT workshop_interests__unique_workshop_within_booking UNIQUE (workshop_id, booking_id)
);
```

## Widoki

### `badges_view`

Widok zawierający informacje potrzebne do stworzenia identyfikatorów dla uczestników konferencji.

```sql
CREATE VIEW badges_view
AS
SELECT DISTINCT
  bookings.conference_id,
  people.first_name,
  people.last_name,
  people.email,
  companies.name company_name
FROM attendees
JOIN people ON people.id = attendees.person_id
JOIN day_enrollments ON attendees.id = day_enrollments.attendee_id
JOIN day_bookings ON day_bookings.id = day_enrollments.day_booking_id
JOIN bookings ON bookings.id = day_bookings.booking_id
JOIN clients ON clients.id = bookings.client_id
LEFT JOIN companies ON companies.client_id = clients.id;
```

### `client_statistics_view`

Widok zawierający statystyki dotyczące aktywności klientów.
Pozwala na łatwe wyszukanie najczęstszych oraz najbardziej zyskownych klientów.

```sql
CREATE VIEW client_statistics_view
AS
SELECT
  clients.id client_id,
  COUNT(DISTINCT bookings.id) number_of_bookings,
  SUM(booking_payments.value) total_payments
FROM clients
JOIN bookings ON bookings.client_id = clients.id
LEFT JOIN booking_payments ON booking_payments.booking_id = bookings.id
GROUP BY clients.id;
```

### `upcoming_conferences_summary_view`

Widok zawierający dodatkowe dane na temat nadchodzących konferencji,
w tym obecnie obowiązującą cene za jeden dzień oraz liczbe wolnych miejsc na wszystkie dni konferencji.

```sql
CREATE VIEW upcoming_conferences_summary_view
AS
SELECT
  conferences.id conference_id,
  conferences.name conference_name,
  MIN(conference_days.date) start_date,
  MAX(conference_days.date) end_date,
  dbo.day_price_on(conferences.id, GETDATE()) price_per_day,
  MIN(dbo.available_conference_day_spots(conference_days.id)) available_all_day_spots
FROM conferences
JOIN conference_days ON conference_days.conference_id = conferences.id
WHERE conference_days.date >= GETDATE()
GROUP BY conferences.id, conferences.name;
```

### `monthly_incomes_view`

Widok zawiera sumaryczną wartość przychodów dla każdego z miesięcy.

```sql
CREATE VIEW monthly_incomes_view
AS
SELECT
  YEAR(date) year,
  MONTH(date) month,
  SUM(value) income
FROM booking_payments
GROUP BY YEAR(date), MONTH(date);
```

### `booking_costs_view`

Widok zawiera podsumowanie kosztów każdego z zamówień, w szczególności kwotę pozostałą do opłacenia.

```sql
CREATE VIEW booking_costs_view
AS
WITH booking_costs AS (
  SELECT
    id,
    dbo.booking_full_days_cost(id) full_days_cost,
    dbo.booking_full_workshops_cost(id) full_workshops_cost,
    dbo.booking_discount(id) discount,
    dbo.booking_paid_amount(id) paid_amount
  FROM bookings
)
SELECT
  id,
  full_days_cost,
  full_workshops_cost,
  discount,
  (full_days_cost + full_workshops_cost) * (1 - discount) AS total_cost,
  paid_amount,
  (full_days_cost + full_workshops_cost) * (1 - discount) - paid_amount AS to_pay
FROM booking_costs;
```

### `missing_attendees_view`

Widok zawiera dane firm, które nie wyspecyfikowaly wszystkich uczestników
na poszczególne dni oraz warsztaty w stosownym czasie (do 14 dni przed konferencją).

```sql
CREATE VIEW missing_attendees_view
AS
SELECT
  bookings.conference_id conference_id,
  companies.name company_name,
  companies.phone company_phone
FROM bookings
JOIN companies ON companies.client_id = bookings.client_id
WHERE cancelled_at IS NULL
  AND DATEDIFF(DAY, GETDATE(), dbo.conference_start_date(bookings.conference_id)) < 14
  AND bookings.id IN (
    -- Missing attendees for a booked conference day
    SELECT DISTINCT booking_id
    FROM day_bookings
    LEFT JOIN day_enrollments ON day_bookings.id = day_enrollments.day_booking_id
    GROUP BY day_bookings.id, day_bookings.booking_id, day_bookings.attendee_count
    HAVING day_bookings.attendee_count > COUNT(day_enrollments.id)
    UNION
    -- Missing attendees for a booked workshop
    SELECT DISTINCT booking_id
    FROM workshop_bookings
    JOIN day_bookings ON workshop_bookings.day_booking_id = day_bookings.id
    LEFT JOIN workshop_enrollments ON workshop_bookings.id = workshop_enrollments.workshop_booking_id
    GROUP BY workshop_bookings.id, day_bookings.booking_id, workshop_bookings.attendee_count
    HAVING workshop_bookings.attendee_count > COUNT(workshop_enrollments.id)
  );
```

## Funkcje

### `day_price_on`

Funkcja wyznaczająca cenę za jeden dzień danej konferencji we wskazanym dniu.

```sql
CREATE FUNCTION day_price_on(
  @conference_id INT,
  @date DATE
)
RETURNS MONEY
AS
BEGIN
  RETURN (
    SELECT TOP 1 price
    FROM conference_prices
    WHERE conference_id = @conference_id AND final_date >= @date
    ORDER BY final_date
  )
END;
```

### `available_conference_day_spots`

Funkcja wyznaczająca liczbę wolnych miejsc wskazany dzień konferencji.

```sql
CREATE FUNCTION available_conference_day_spots(
  @conference_day_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT
      attendee_limit - ISNULL(SUM(day_bookings.attendee_count), 0)
    FROM conference_days
    LEFT JOIN day_bookings ON day_bookings.conference_day_id = conference_days.id
    WHERE conference_days.id = @conference_day_id
    GROUP BY conference_days.id, conference_days.attendee_limit
  )
END;
```

### `available_workshop_spots`

Funkcja wyznaczająca liczbę wolnych miejsc wskazany warsztat.

```sql
CREATE FUNCTION available_workshop_spots(
  @workshop_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT
      attendee_limit - ISNULL(SUM(workshop_bookings.attendee_count), 0)
    FROM workshops
    LEFT JOIN workshop_bookings ON workshop_bookings.workshop_id = workshops.id
    WHERE workshops.id = @workshop_id
    GROUP BY workshops.id, workshops.attendee_limit
  )
END;
```

### `conference_day_attendees`

Funkcja zwracająca listę uczestników na wskazany dzień konferencji.

```sql
CREATE FUNCTION conference_day_attendees(
  @conference_day_id INT
)
RETURNS TABLE
AS
RETURN (
  SELECT
    attendees.id attendee_id,
    people.*
  FROM attendees
  JOIN people ON people.id = attendees.person_id
  JOIN day_enrollments ON day_enrollments.attendee_id = attendees.id
  JOIN day_bookings ON day_bookings.id = day_enrollments.day_booking_id
  WHERE day_bookings.conference_day_id = @conference_day_id
    AND day_bookings.cancelled_at IS NULL
);
```

### `workshop_attendees`

Funkcja zwracająca listę uczestników na wskazany warsztat.

```sql
CREATE FUNCTION workshop_attendees(
  @workshop_id INT
)
RETURNS TABLE
AS
RETURN (
  SELECT
    attendees.id attendee_id,
    people.*
  FROM attendees
  JOIN people ON people.id = attendees.person_id
  JOIN day_enrollments ON day_enrollments.attendee_id = attendees.id
  JOIN workshop_bookings ON workshop_bookings.day_booking_id = day_enrollments.day_booking_id
  WHERE workshop_bookings.workshop_id = @workshop_id
    AND workshop_bookings.cancelled_at IS NULL
);
```

### `booking_full_days_cost`

Funkcja zwracająca całkowitą kwotę za same dni konferencji dla wskazanego zamówienia.

```sql
CREATE FUNCTION booking_full_days_cost(
  @booking_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT
      SUM(dbo.day_price_on(bookings.conference_id, bookings.created_at) * day_bookings.attendee_count)
    FROM day_bookings
    JOIN bookings ON bookings.id = day_bookings.booking_id
    WHERE booking_id = @booking_id
  )
END;
```

### `booking_full_workshops_cost`

Funkcja zwracająca całkowitą kwotę za warsztaty dla wskazanego zamówienia.

```sql
CREATE FUNCTION booking_full_workshops_cost(
  @booking_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT
      SUM(workshops.price * workshop_bookings.attendee_count)
    FROM workshop_bookings
    JOIN day_bookings ON day_bookings.id = workshop_bookings.day_booking_id
    JOIN workshops ON workshops.id = workshop_bookings.workshop_id
    WHERE day_bookings.booking_id = @booking_id
  )
END;
```

### `booking_paid_amount`

Funkcja zwracająca całkowitą sumę płatności dokonanych w ramach wskazanego zamówienia.

```sql
CREATE FUNCTION booking_paid_amount(
  @booking_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT SUM(value)
    FROM booking_payments
    WHERE booking_id = @booking_id
  )
END;
```

### `booking_discount`

Funkcja zwracająca zniżkę przysługującą wskazanemu zamówieniu
(w przypadku klienta indywidualnego będącego studentem jest to zniżka studencka).

```sql
CREATE FUNCTION booking_discount(
  @booking_id INT
)
RETURNS INT
AS
BEGIN
  RETURN (
    SELECT IIF(individual_clients.student_card_id IS NOT NULL, conferences.student_discount, 0)
    FROM bookings
    JOIN conferences ON conferences.id = bookings.conference_id
    JOIN clients ON clients.id = bookings.client_id
    LEFT JOIN individual_clients ON clients.id = individual_clients.client_id
    WHERE bookings.id = @booking_id
  )
END;
```

### `conference_start_date`

Funkcja zwracająca datę pierwszego dnia wskazanej konferencji.

```sql
CREATE FUNCTION conference_start_date(
  @conference_id INT
)
RETURNS DATE
AS
BEGIN
  RETURN (
    SELECT MIN(date)
    FROM conference_days
    WHERE conference_id = @conference_id
  )
END;
```

### `conference_end_date`

Funkcja zwracająca datę ostatniego dnia wskazanej konferencji.

```sql
CREATE FUNCTION conference_end_date(
  @conference_id INT
)
RETURNS DATE
AS
BEGIN
  RETURN (
    SELECT MAX(date)
    FROM conference_days
    WHERE conference_id = @conference_id
  )
END;
```

## Procedury

## Triggery
