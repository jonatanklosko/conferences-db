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
