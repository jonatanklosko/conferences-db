USE Projekt;
DELETE FROM booking_payments;
DBCC CHECKIDENT(booking_payments, RESEED, 0);
DELETE FROM companies;
DBCC CHECKIDENT(companies, RESEED, 0);
DELETE FROM conference_prices;
DBCC CHECKIDENT(conference_prices, RESEED, 0);
DELETE FROM individual_clients;
DBCC CHECKIDENT(individual_clients, RESEED, 0);
DELETE FROM workshop_enrollments;
DBCC CHECKIDENT(workshop_enrollments, RESEED, 0);
DELETE FROM day_enrollments;
DBCC CHECKIDENT(day_enrollments, RESEED, 0);
DELETE FROM attendees;
DBCC CHECKIDENT(attendees, RESEED, 0);
DELETE FROM people;
DBCC CHECKIDENT(people, RESEED, 0);
DELETE FROM workshop_bookings;
DBCC CHECKIDENT(workshop_bookings, RESEED, 0);
DELETE FROM day_bookings;
DBCC CHECKIDENT(day_bookings, RESEED, 0);
DELETE FROM workshop_interests;
DBCC CHECKIDENT(workshop_interests, RESEED, 0);
DELETE FROM bookings;
DBCC CHECKIDENT(bookings, RESEED, 0);
DELETE FROM clients;
DBCC CHECKIDENT(clients, RESEED, 0);
DELETE FROM workshops;
DBCC CHECKIDENT(workshops, RESEED, 0);
DELETE FROM conference_days;
DBCC CHECKIDENT(conference_days, RESEED, 0);
DELETE FROM conferences;
DBCC CHECKIDENT(conferences, RESEED, 0);

INSERT INTO conferences VALUES ('Międzyuczelniane forum programistów', 'Kielce', 'Dębowa', '25-511', '33', 0.75);
INSERT INTO conference_prices VALUES(1, '2018-01-19', 130)
INSERT INTO conference_prices VALUES(1, '2018-01-05', 104.0)
INSERT INTO conference_days VALUES(1, '2018-01-19', 1000)
INSERT INTO workshops VALUES(1, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '11:20:00', '13:45:00', '827', 75, 75);
INSERT INTO workshops VALUES(1, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '08:50:00', '12:55:00', '1225', 65, 45);
INSERT INTO workshops VALUES(1, 'Wykład z programowania w języku C++', 'Brak opisu.', '11:20:00', '13:45:00', '215', 110, 50);
INSERT INTO workshops VALUES(1, 'Wykład z programowania w języku PHP', 'Brak opisu.', '16:20:00', '19:35:00', '815', 50, 70);
INSERT INTO conference_days VALUES(1, '2018-01-20', 1000)
INSERT INTO workshops VALUES(2, 'Wykład z uczenia maszynowego', 'Brak opisu.', '08:00:00', '12:05:00', '1101', 60, 35);
INSERT INTO workshops VALUES(2, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '13:00:00', '14:35:00', '1120', 175, 90);
INSERT INTO workshops VALUES(2, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '08:50:00', '12:55:00', '218', 130, 10);
INSERT INTO workshops VALUES(2, 'Warsztaty z kryptografii', 'Brak opisu.', '16:20:00', '18:45:00', '824', 110, 60);
INSERT INTO workshops VALUES(2, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '13:50:00', '17:05:00', '919', 75, 55);
INSERT INTO conferences VALUES ('Międzyuczelniane forum kół naukowych', 'Poznań', 'Królewska', '61-740', '34', 0.95);
INSERT INTO conference_prices VALUES(2, '2018-01-26', 290)
INSERT INTO conference_prices VALUES(2, '2018-01-12', 232.0)
INSERT INTO conference_days VALUES(2, '2018-01-26', 1000)
INSERT INTO workshops VALUES(3, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '16:20:00', '18:45:00', '601', 100, 55);
INSERT INTO workshops VALUES(3, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '17:10:00', '20:25:00', '313', 180, 10);
INSERT INTO workshops VALUES(3, 'Warsztaty z programowania równoległego', 'Brak opisu.', '13:50:00', '15:25:00', '24', 105, 85);
INSERT INTO conference_days VALUES(2, '2018-01-27', 1000)
INSERT INTO workshops VALUES(4, 'Wykład z programowania równoległego', 'Brak opisu.', '08:50:00', '12:55:00', '811', 145, 25);
INSERT INTO workshops VALUES(4, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '18:00:00', '20:25:00', '924', 125, 25);
INSERT INTO workshops VALUES(4, 'Wykład z programowania obiektowego', 'Brak opisu.', '09:40:00', '12:55:00', '904', 90, 10);
INSERT INTO workshops VALUES(4, 'Wykład z systemów operacyjnych', 'Brak opisu.', '15:30:00', '19:35:00', '508', 185, 25);
INSERT INTO conferences VALUES ('Powszechne konferencje informatyków', 'Kraków', 'Armii Krajowej', '30-055', '48', 0.75);
INSERT INTO conference_prices VALUES(3, '2018-02-07', 220)
INSERT INTO conference_prices VALUES(3, '2018-01-24', 176.0)
INSERT INTO conference_days VALUES(3, '2018-02-07', 1000)
INSERT INTO workshops VALUES(5, 'Wykład z programowania obiektowego', 'Brak opisu.', '17:10:00', '20:25:00', '1', 125, 80);
INSERT INTO workshops VALUES(5, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '17:10:00', '20:25:00', '1127', 140, 10);
INSERT INTO workshops VALUES(5, 'Wykład z architektur procesorów', 'Brak opisu.', '18:00:00', '20:25:00', '224', 135, 90);
INSERT INTO workshops VALUES(5, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '13:00:00', '15:25:00', '21', 180, 45);
INSERT INTO conference_days VALUES(3, '2018-02-08', 1000)
INSERT INTO workshops VALUES(6, 'Wykład z teorii kompilacji', 'Brak opisu.', '13:50:00', '16:15:00', '5', 105, 20);
INSERT INTO workshops VALUES(6, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '11:20:00', '15:25:00', '728', 125, 85);
INSERT INTO workshops VALUES(6, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '08:00:00', '11:15:00', '602', 160, 85);
INSERT INTO workshops VALUES(6, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '08:50:00', '12:05:00', '223', 90, 80);
INSERT INTO workshops VALUES(6, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '09:40:00', '13:45:00', '426', 165, 50);
INSERT INTO conference_days VALUES(3, '2018-02-09', 1000)
INSERT INTO workshops VALUES(7, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '15:30:00', '18:45:00', '1123', 115, 95);
INSERT INTO workshops VALUES(7, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '13:50:00', '17:55:00', '328', 100, 90);
INSERT INTO workshops VALUES(7, 'Wykład z systemów operacyjnych', 'Brak opisu.', '09:40:00', '13:45:00', '723', 135, 50);
INSERT INTO conference_days VALUES(3, '2018-02-10', 1000)
INSERT INTO workshops VALUES(8, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '12:10:00', '16:15:00', '903', 70, 25);
INSERT INTO workshops VALUES(8, 'Wykład z teorii kompilacji', 'Brak opisu.', '13:00:00', '16:15:00', '429', 110, 30);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistyczne', 'Katowice', 'Armii Krajowej', '40-236', '42', 0.55);
INSERT INTO conference_prices VALUES(4, '2018-02-22', 380)
INSERT INTO conference_prices VALUES(4, '2018-02-08', 304.0)
INSERT INTO conference_days VALUES(4, '2018-02-22', 1000)
INSERT INTO workshops VALUES(9, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '17:10:00', '20:25:00', '18', 185, 70);
INSERT INTO workshops VALUES(9, 'Warsztaty z kryptografii', 'Brak opisu.', '13:00:00', '14:35:00', '1018', 180, 70);
INSERT INTO workshops VALUES(9, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '13:00:00', '14:35:00', '911', 185, 45);
INSERT INTO workshops VALUES(9, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '08:50:00', '11:15:00', '910', 165, 70);
INSERT INTO workshops VALUES(9, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '12:10:00', '14:35:00', '1218', 100, 25);
INSERT INTO workshops VALUES(9, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '15:30:00', '18:45:00', '1321', 180, 50);
INSERT INTO conference_days VALUES(4, '2018-02-23', 1000)
INSERT INTO workshops VALUES(10, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '17:10:00', '19:35:00', '25', 115, 90);
INSERT INTO workshops VALUES(10, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '18:00:00', '20:25:00', '20', 115, 85);
INSERT INTO workshops VALUES(10, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '16:20:00', '20:25:00', '15', 70, 10);
INSERT INTO workshops VALUES(10, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '08:00:00', '10:25:00', '905', 160, 30);
INSERT INTO workshops VALUES(10, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '12:10:00', '15:25:00', '607', 150, 30);
INSERT INTO conference_days VALUES(4, '2018-02-24', 1000)
INSERT INTO workshops VALUES(11, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '17:10:00', '19:35:00', '423', 140, 60);
INSERT INTO workshops VALUES(11, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '13:00:00', '17:05:00', '1320', 160, 15);
INSERT INTO workshops VALUES(11, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '10:30:00', '12:55:00', '1311', 145, 65);
INSERT INTO conferences VALUES ('Akademickie spotkanie kół naukowych', 'Szczecin', 'Królewska', '71-627', '45', 0.9);
INSERT INTO conference_prices VALUES(5, '2018-03-01', 410)
INSERT INTO conference_prices VALUES(5, '2018-02-15', 328.0)
INSERT INTO conference_days VALUES(5, '2018-03-01', 1000)
INSERT INTO workshops VALUES(12, 'Wykład z systemów ekspertowych', 'Brak opisu.', '11:20:00', '13:45:00', '723', 170, 90);
INSERT INTO workshops VALUES(12, 'Wykład z programowania w języku C++', 'Brak opisu.', '15:30:00', '18:45:00', '1229', 90, 75);
INSERT INTO workshops VALUES(12, 'Wykład z systemów operacyjnych', 'Brak opisu.', '15:30:00', '19:35:00', '914', 85, 45);
INSERT INTO workshops VALUES(12, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '13:50:00', '17:05:00', '1423', 195, 65);
INSERT INTO conference_days VALUES(5, '2018-03-02', 1000)
INSERT INTO workshops VALUES(13, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '09:40:00', '12:05:00', '813', 55, 75);
INSERT INTO workshops VALUES(13, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '12:10:00', '16:15:00', '1112', 165, 90);
INSERT INTO workshops VALUES(13, 'Wykład z programowania w języku Java', 'Brak opisu.', '14:40:00', '18:45:00', '115', 170, 60);
INSERT INTO workshops VALUES(13, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '11:20:00', '14:35:00', '1016', 80, 35);
INSERT INTO conference_days VALUES(5, '2018-03-03', 1000)
INSERT INTO workshops VALUES(14, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '15:30:00', '19:35:00', '27', 110, 95);
INSERT INTO workshops VALUES(14, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '17:10:00', '18:45:00', '608', 180, 40);
INSERT INTO workshops VALUES(14, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '09:40:00', '11:15:00', '409', 140, 30);
INSERT INTO conferences VALUES ('Powszechne konferencje programistyczne', 'Warszawa', 'Słowackiego', '02-495', '0', 0.7);
INSERT INTO conference_prices VALUES(6, '2018-03-09', 400)
INSERT INTO conference_prices VALUES(6, '2018-02-23', 320.0)
INSERT INTO conference_days VALUES(6, '2018-03-09', 1000)
INSERT INTO workshops VALUES(15, 'Wykład z algorytmów grafowych', 'Brak opisu.', '15:30:00', '19:35:00', '1012', 160, 70);
INSERT INTO workshops VALUES(15, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '17:10:00', '20:25:00', '805', 70, 55);
INSERT INTO workshops VALUES(15, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '18:00:00', '19:35:00', '207', 90, 85);
INSERT INTO workshops VALUES(15, 'Wykład z programowania w języku Scala', 'Brak opisu.', '09:40:00', '11:15:00', '916', 90, 95);
INSERT INTO workshops VALUES(15, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '13:00:00', '15:25:00', '213', 180, 90);
INSERT INTO conference_days VALUES(6, '2018-03-10', 1000)
INSERT INTO workshops VALUES(16, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '15:30:00', '17:55:00', '1319', 130, 95);
INSERT INTO workshops VALUES(16, 'Wykład z sieci neuronowych', 'Brak opisu.', '17:10:00', '20:25:00', '1110', 175, 70);
INSERT INTO workshops VALUES(16, 'Wykład z programowania w języku Java', 'Brak opisu.', '08:50:00', '10:25:00', '527', 110, 90);
INSERT INTO conferences VALUES ('Międzyuczelniane forum programistyczne', 'Wrocław', 'Mickiewicza', '52-119', '33', 0.55);
INSERT INTO conference_prices VALUES(7, '2018-03-22', 320)
INSERT INTO conference_prices VALUES(7, '2018-03-08', 256.0)
INSERT INTO conference_days VALUES(7, '2018-03-22', 1000)
INSERT INTO workshops VALUES(17, 'Wykład z systemów operacyjnych', 'Brak opisu.', '12:10:00', '14:35:00', '911', 65, 90);
INSERT INTO workshops VALUES(17, 'Wykład z programowania w języku PHP', 'Brak opisu.', '11:20:00', '15:25:00', '907', 105, 45);
INSERT INTO workshops VALUES(17, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '16:20:00', '20:25:00', '1010', 85, 70);
INSERT INTO workshops VALUES(17, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '11:20:00', '12:55:00', '1419', 105, 85);
INSERT INTO workshops VALUES(17, 'Wykład z programowania w języku Java', 'Brak opisu.', '14:40:00', '16:15:00', '906', 190, 45);
INSERT INTO conference_days VALUES(7, '2018-03-23', 1000)
INSERT INTO workshops VALUES(18, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '08:50:00', '11:15:00', '1022', 75, 50);
INSERT INTO workshops VALUES(18, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '13:50:00', '15:25:00', '907', 195, 55);
INSERT INTO workshops VALUES(18, 'Wykład z programowania w języku Rust', 'Brak opisu.', '09:40:00', '12:05:00', '7', 100, 10);
INSERT INTO conference_days VALUES(7, '2018-03-24', 1000)
INSERT INTO workshops VALUES(19, 'Wykład z programowania w języku C++', 'Brak opisu.', '08:00:00', '12:05:00', '1002', 135, 50);
INSERT INTO workshops VALUES(19, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '10:30:00', '12:55:00', '109', 60, 80);
INSERT INTO workshops VALUES(19, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '14:40:00', '18:45:00', '425', 50, 10);
INSERT INTO conferences VALUES ('Studenckie warsztaty informatyczne', 'Szczecin', 'Dębowa', '71-627', '30', 0.6);
INSERT INTO conference_prices VALUES(8, '2018-03-30', 300)
INSERT INTO conference_prices VALUES(8, '2018-03-16', 240.0)
INSERT INTO conference_days VALUES(8, '2018-03-30', 1000)
INSERT INTO workshops VALUES(20, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '08:50:00', '12:55:00', '717', 195, 80);
INSERT INTO workshops VALUES(20, 'Wykład z uczenia maszynowego', 'Brak opisu.', '12:10:00', '14:35:00', '924', 85, 25);
INSERT INTO workshops VALUES(20, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '17:10:00', '18:45:00', '715', 145, 30);
INSERT INTO workshops VALUES(20, 'Wykład z programowania w języku PHP', 'Brak opisu.', '12:10:00', '16:15:00', '502', 150, 25);
INSERT INTO conference_days VALUES(8, '2018-03-31', 1000)
INSERT INTO workshops VALUES(21, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '17:10:00', '20:25:00', '525', 140, 65);
INSERT INTO workshops VALUES(21, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '09:40:00', '11:15:00', '1109', 120, 45);
INSERT INTO workshops VALUES(21, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '08:00:00', '12:05:00', '320', 70, 90);
INSERT INTO workshops VALUES(21, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '11:20:00', '15:25:00', '820', 70, 20);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje programistów', 'Kraków', 'Królewska', '30-055', '16', 0.1);
INSERT INTO conference_prices VALUES(9, '2018-04-05', 430)
INSERT INTO conference_prices VALUES(9, '2018-03-22', 344.0)
INSERT INTO conference_days VALUES(9, '2018-04-05', 1000)
INSERT INTO workshops VALUES(22, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '17:10:00', '19:35:00', '424', 190, 10);
INSERT INTO workshops VALUES(22, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '10:30:00', '12:55:00', '1206', 160, 65);
INSERT INTO workshops VALUES(22, 'Wykład z kryptografii', 'Brak opisu.', '14:40:00', '16:15:00', '1128', 170, 45);
INSERT INTO workshops VALUES(22, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '17:10:00', '20:25:00', '405', 120, 55);
INSERT INTO workshops VALUES(22, 'Wykład z uczenia maszynowego', 'Brak opisu.', '12:10:00', '16:15:00', '1109', 100, 40);
INSERT INTO conference_days VALUES(9, '2018-04-06', 1000)
INSERT INTO workshops VALUES(23, 'Wykład z programowania w języku Scala', 'Brak opisu.', '08:00:00', '12:05:00', '611', 100, 35);
INSERT INTO workshops VALUES(23, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '18:00:00', '20:25:00', '1310', 75, 15);
INSERT INTO workshops VALUES(23, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '13:50:00', '15:25:00', '327', 180, 75);
INSERT INTO workshops VALUES(23, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '08:00:00', '09:35:00', '1418', 170, 55);
INSERT INTO workshops VALUES(23, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '18:00:00', '20:25:00', '1318', 165, 10);
INSERT INTO conference_days VALUES(9, '2018-04-07', 1000)
INSERT INTO workshops VALUES(24, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '14:40:00', '17:05:00', '317', 180, 10);
INSERT INTO workshops VALUES(24, 'Wykład z programowania w języku Rust', 'Brak opisu.', '18:00:00', '19:35:00', '1409', 90, 15);
INSERT INTO workshops VALUES(24, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '10:30:00', '13:45:00', '1423', 120, 45);
INSERT INTO conferences VALUES ('Powszechne konferencje informatyczne', 'Poznań', 'Armii Krajowej', '61-740', '11', 0.5);
INSERT INTO conference_prices VALUES(10, '2018-04-27', 290)
INSERT INTO conference_prices VALUES(10, '2018-04-13', 232.0)
INSERT INTO conference_days VALUES(10, '2018-04-27', 1000)
INSERT INTO workshops VALUES(25, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '13:00:00', '15:25:00', '402', 160, 60);
INSERT INTO workshops VALUES(25, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '12:10:00', '14:35:00', '1411', 60, 30);
INSERT INTO workshops VALUES(25, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '08:00:00', '11:15:00', '1002', 110, 50);
INSERT INTO conference_days VALUES(10, '2018-04-28', 1000)
INSERT INTO workshops VALUES(26, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '10:30:00', '13:45:00', '1115', 125, 35);
INSERT INTO workshops VALUES(26, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '14:40:00', '17:55:00', '909', 165, 30);
INSERT INTO workshops VALUES(26, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '15:30:00', '18:45:00', '106', 70, 60);
INSERT INTO workshops VALUES(26, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '08:00:00', '12:05:00', '19', 105, 95);
INSERT INTO workshops VALUES(26, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '13:00:00', '15:25:00', '707', 120, 65);
INSERT INTO conferences VALUES ('Międzyuczelniane forum programistów', 'Poznań', 'Wojska Polskiego', '61-740', '10', 0.3);
INSERT INTO conference_prices VALUES(11, '2018-05-04', 380)
INSERT INTO conference_prices VALUES(11, '2018-04-20', 304.0)
INSERT INTO conference_days VALUES(11, '2018-05-04', 1000)
INSERT INTO workshops VALUES(27, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '08:00:00', '09:35:00', '1407', 130, 35);
INSERT INTO workshops VALUES(27, 'Wykład z programowania w języku Python', 'Brak opisu.', '11:20:00', '15:25:00', '1412', 50, 60);
INSERT INTO workshops VALUES(27, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '17:10:00', '18:45:00', '1001', 130, 80);
INSERT INTO workshops VALUES(27, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '11:20:00', '15:25:00', '1116', 120, 50);
INSERT INTO conference_days VALUES(11, '2018-05-05', 1000)
INSERT INTO workshops VALUES(28, 'Wykład z programowania obiektowego', 'Brak opisu.', '09:40:00', '11:15:00', '722', 130, 25);
INSERT INTO workshops VALUES(28, 'Wykład z algorytmów grafowych', 'Brak opisu.', '09:40:00', '12:55:00', '1316', 60, 90);
INSERT INTO workshops VALUES(28, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '16:20:00', '17:55:00', '1310', 80, 60);
INSERT INTO workshops VALUES(28, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '18:00:00', '20:25:00', '1221', 155, 10);
INSERT INTO workshops VALUES(28, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '15:30:00', '18:45:00', '2', 85, 65);
INSERT INTO workshops VALUES(28, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '09:40:00', '13:45:00', '1104', 110, 60);
INSERT INTO conferences VALUES ('Międzyuczelniane forum miłośników programowania', 'Lublin', 'Królewska', '20-410', '1', 0.75);
INSERT INTO conference_prices VALUES(12, '2018-06-01', 200)
INSERT INTO conference_prices VALUES(12, '2018-05-18', 160.0)
INSERT INTO conference_days VALUES(12, '2018-06-01', 1000)
INSERT INTO workshops VALUES(29, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '15:30:00', '19:35:00', '128', 165, 65);
INSERT INTO workshops VALUES(29, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '10:30:00', '14:35:00', '600', 145, 85);
INSERT INTO workshops VALUES(29, 'Warsztaty z architektur procesorów', 'Brak opisu.', '14:40:00', '16:15:00', '1215', 80, 75);
INSERT INTO workshops VALUES(29, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '14:40:00', '18:45:00', '1008', 130, 85);
INSERT INTO conference_days VALUES(12, '2018-06-02', 1000)
INSERT INTO workshops VALUES(30, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '15:30:00', '18:45:00', '829', 190, 55);
INSERT INTO workshops VALUES(30, 'Wykład z architektur procesorów', 'Brak opisu.', '13:50:00', '17:55:00', '1211', 185, 35);
INSERT INTO workshops VALUES(30, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '16:20:00', '18:45:00', '1127', 105, 75);
INSERT INTO conferences VALUES ('Akademickie spotkanie miłośników programowania', 'Kielce', '3 Maja', '25-511', '35', 0.45);
INSERT INTO conference_prices VALUES(13, '2018-06-07', 180)
INSERT INTO conference_prices VALUES(13, '2018-05-24', 144.0)
INSERT INTO conference_days VALUES(13, '2018-06-07', 1000)
INSERT INTO workshops VALUES(31, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '13:50:00', '17:05:00', '813', 70, 75);
INSERT INTO workshops VALUES(31, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '13:50:00', '16:15:00', '1028', 65, 25);
INSERT INTO workshops VALUES(31, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '13:50:00', '16:15:00', '28', 170, 80);
INSERT INTO workshops VALUES(31, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '10:30:00', '12:05:00', '400', 85, 70);
INSERT INTO conference_days VALUES(13, '2018-06-08', 1000)
INSERT INTO workshops VALUES(32, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '16:20:00', '19:35:00', '916', 85, 40);
INSERT INTO workshops VALUES(32, 'Wykład z programowania w języku Julia', 'Brak opisu.', '15:30:00', '19:35:00', '1016', 170, 90);
INSERT INTO workshops VALUES(32, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '10:30:00', '12:05:00', '1013', 145, 30);
INSERT INTO workshops VALUES(32, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '12:10:00', '14:35:00', '111', 65, 45);
INSERT INTO conference_days VALUES(13, '2018-06-09', 1000)
INSERT INTO workshops VALUES(33, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '10:30:00', '14:35:00', '211', 95, 15);
INSERT INTO workshops VALUES(33, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '15:30:00', '17:05:00', '326', 115, 95);
INSERT INTO workshops VALUES(33, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '17:10:00', '20:25:00', '723', 60, 60);
INSERT INTO conferences VALUES ('Akademickie spotkanie kół naukowych', 'Katowice', 'Wojska Polskiego', '40-236', '42', 1.0);
INSERT INTO conference_prices VALUES(14, '2018-06-15', 400)
INSERT INTO conference_prices VALUES(14, '2018-06-01', 320.0)
INSERT INTO conference_days VALUES(14, '2018-06-15', 1000)
INSERT INTO workshops VALUES(34, 'Wykład z algorytmów grafowych', 'Brak opisu.', '15:30:00', '18:45:00', '325', 185, 70);
INSERT INTO workshops VALUES(34, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '10:30:00', '14:35:00', '718', 65, 20);
INSERT INTO workshops VALUES(34, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '12:10:00', '15:25:00', '1416', 115, 90);
INSERT INTO workshops VALUES(34, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '16:20:00', '19:35:00', '518', 90, 15);
INSERT INTO conference_days VALUES(14, '2018-06-16', 1000)
INSERT INTO workshops VALUES(35, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '08:50:00', '12:55:00', '1406', 105, 85);
INSERT INTO workshops VALUES(35, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '12:10:00', '15:25:00', '309', 180, 20);
INSERT INTO workshops VALUES(35, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '08:00:00', '11:15:00', '1107', 195, 95);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie miłośników programowania', 'Lublin', 'Armii Krajowej', '20-410', '40', 0.8);
INSERT INTO conference_prices VALUES(15, '2018-06-28', 170)
INSERT INTO conference_prices VALUES(15, '2018-06-14', 136.0)
INSERT INTO conference_days VALUES(15, '2018-06-28', 1000)
INSERT INTO workshops VALUES(36, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '13:50:00', '17:05:00', '211', 110, 35);
INSERT INTO workshops VALUES(36, 'Wykład z grafiki komputerowej', 'Brak opisu.', '10:30:00', '12:05:00', '519', 75, 30);
INSERT INTO workshops VALUES(36, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '15:30:00', '17:05:00', '523', 120, 70);
INSERT INTO conference_days VALUES(15, '2018-06-29', 1000)
INSERT INTO workshops VALUES(37, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '13:00:00', '17:05:00', '117', 185, 20);
INSERT INTO workshops VALUES(37, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '14:40:00', '18:45:00', '714', 85, 90);
INSERT INTO workshops VALUES(37, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '17:10:00', '18:45:00', '1127', 160, 80);
INSERT INTO workshops VALUES(37, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '09:40:00', '11:15:00', '1112', 160, 15);
INSERT INTO workshops VALUES(37, 'Wykład z sieci neuronowych', 'Brak opisu.', '13:00:00', '14:35:00', '1400', 155, 90);
INSERT INTO conference_days VALUES(15, '2018-06-30', 1000)
INSERT INTO workshops VALUES(38, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '09:40:00', '12:05:00', '909', 140, 10);
INSERT INTO workshops VALUES(38, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '17:10:00', '18:45:00', '618', 135, 85);
INSERT INTO workshops VALUES(38, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '13:50:00', '15:25:00', '411', 65, 30);
INSERT INTO workshops VALUES(38, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '13:00:00', '17:05:00', '316', 70, 30);
INSERT INTO conferences VALUES ('Studenckie warsztaty programistyczne', 'Stalowa Wola', 'Wojska Polskiego', '37-450', '47', 0.55);
INSERT INTO conference_prices VALUES(16, '2018-07-13', 260)
INSERT INTO conference_prices VALUES(16, '2018-06-29', 208.0)
INSERT INTO conference_days VALUES(16, '2018-07-13', 1000)
INSERT INTO workshops VALUES(39, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '17:10:00', '20:25:00', '1003', 85, 65);
INSERT INTO workshops VALUES(39, 'Wykład z programowania w języku C++', 'Brak opisu.', '16:20:00', '18:45:00', '726', 100, 95);
INSERT INTO workshops VALUES(39, 'Wykład z teorii kompilacji', 'Brak opisu.', '12:10:00', '14:35:00', '713', 80, 75);
INSERT INTO workshops VALUES(39, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '14:40:00', '16:15:00', '1111', 115, 65);
INSERT INTO conference_days VALUES(16, '2018-07-14', 1000)
INSERT INTO workshops VALUES(40, 'Wykład z grafiki komputerowej', 'Brak opisu.', '09:40:00', '11:15:00', '1201', 150, 25);
INSERT INTO workshops VALUES(40, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '18:00:00', '20:25:00', '606', 80, 70);
INSERT INTO workshops VALUES(40, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '15:30:00', '18:45:00', '1015', 165, 65);
INSERT INTO workshops VALUES(40, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '08:50:00', '10:25:00', '303', 185, 45);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie kół naukowych', 'Lublin', 'Armii Krajowej', '20-410', '26', 0.35);
INSERT INTO conference_prices VALUES(17, '2018-07-20', 230)
INSERT INTO conference_prices VALUES(17, '2018-07-06', 184.0)
INSERT INTO conference_days VALUES(17, '2018-07-20', 1000)
INSERT INTO workshops VALUES(41, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '17:10:00', '20:25:00', '1315', 175, 25);
INSERT INTO workshops VALUES(41, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '18:00:00', '20:25:00', '1202', 115, 35);
INSERT INTO workshops VALUES(41, 'Wykład z kryptografii', 'Brak opisu.', '08:00:00', '12:05:00', '1207', 105, 40);
INSERT INTO workshops VALUES(41, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '08:50:00', '12:05:00', '925', 100, 55);
INSERT INTO workshops VALUES(41, 'Wykład z grafiki komputerowej', 'Brak opisu.', '16:20:00', '18:45:00', '1422', 150, 80);
INSERT INTO conference_days VALUES(17, '2018-07-21', 1000)
INSERT INTO workshops VALUES(42, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '17:10:00', '20:25:00', '1309', 120, 65);
INSERT INTO workshops VALUES(42, 'Wykład z programowania w języku Julia', 'Brak opisu.', '16:20:00', '18:45:00', '607', 195, 80);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie informatyczne', 'Katowice', 'Długa', '40-236', '19', 0.3);
INSERT INTO conference_prices VALUES(18, '2018-08-03', 220)
INSERT INTO conference_prices VALUES(18, '2018-07-20', 176.0)
INSERT INTO conference_days VALUES(18, '2018-08-03', 1000)
INSERT INTO workshops VALUES(43, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '13:00:00', '16:15:00', '313', 65, 85);
INSERT INTO workshops VALUES(43, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '13:50:00', '17:05:00', '1300', 135, 20);
INSERT INTO workshops VALUES(43, 'Wykład z systemów operacyjnych', 'Brak opisu.', '14:40:00', '17:05:00', '513', 160, 70);
INSERT INTO workshops VALUES(43, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '12:10:00', '16:15:00', '719', 195, 90);
INSERT INTO workshops VALUES(43, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '09:40:00', '13:45:00', '902', 155, 10);
INSERT INTO conference_days VALUES(18, '2018-08-04', 1000)
INSERT INTO workshops VALUES(44, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '17:10:00', '19:35:00', '929', 115, 25);
INSERT INTO workshops VALUES(44, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '13:00:00', '16:15:00', '412', 145, 35);
INSERT INTO workshops VALUES(44, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '09:40:00', '12:05:00', '1413', 180, 40);
INSERT INTO workshops VALUES(44, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '15:30:00', '17:05:00', '1427', 125, 10);
INSERT INTO conferences VALUES ('Akademickie konferencje informatyczne', 'Wrocław', 'Mickiewicza', '52-119', '19', 0.35);
INSERT INTO conference_prices VALUES(19, '2018-09-07', 100)
INSERT INTO conference_prices VALUES(19, '2018-08-24', 80.0)
INSERT INTO conference_days VALUES(19, '2018-09-07', 1000)
INSERT INTO workshops VALUES(45, 'Wykład z teorii kompilacji', 'Brak opisu.', '09:40:00', '12:05:00', '1428', 65, 80);
INSERT INTO workshops VALUES(45, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '16:20:00', '18:45:00', '916', 185, 25);
INSERT INTO workshops VALUES(45, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '08:00:00', '12:05:00', '1309', 180, 15);
INSERT INTO workshops VALUES(45, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '13:50:00', '17:55:00', '325', 95, 95);
INSERT INTO workshops VALUES(45, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '08:50:00', '12:05:00', '507', 70, 65);
INSERT INTO workshops VALUES(45, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '15:30:00', '17:05:00', '1128', 60, 55);
INSERT INTO conference_days VALUES(19, '2018-09-08', 1000)
INSERT INTO workshops VALUES(46, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '16:20:00', '19:35:00', '409', 125, 10);
INSERT INTO workshops VALUES(46, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '18:00:00', '20:25:00', '808', 105, 65);
INSERT INTO workshops VALUES(46, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '16:20:00', '18:45:00', '1127', 175, 90);
INSERT INTO workshops VALUES(46, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '08:50:00', '12:05:00', '1412', 150, 25);
INSERT INTO workshops VALUES(46, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '17:10:00', '18:45:00', '721', 50, 45);
INSERT INTO conferences VALUES ('Akademickie konferencje informatyczne', 'Stalowa Wola', 'Słowackiego', '37-450', '43', 1.0);
INSERT INTO conference_prices VALUES(20, '2018-09-21', 350)
INSERT INTO conference_prices VALUES(20, '2018-09-07', 280.0)
INSERT INTO conference_days VALUES(20, '2018-09-21', 1000)
INSERT INTO workshops VALUES(47, 'Wykład z programowania w języku C++', 'Brak opisu.', '13:50:00', '16:15:00', '727', 130, 40);
INSERT INTO workshops VALUES(47, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '09:40:00', '12:55:00', '913', 85, 10);
INSERT INTO workshops VALUES(47, 'Wykład z programowania w języku PHP', 'Brak opisu.', '12:10:00', '13:45:00', '807', 150, 70);
INSERT INTO workshops VALUES(47, 'Wykład z teorii kompilacji', 'Brak opisu.', '09:40:00', '11:15:00', '921', 150, 65);
INSERT INTO conference_days VALUES(20, '2018-09-22', 1000)
INSERT INTO workshops VALUES(48, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '08:00:00', '09:35:00', '1012', 185, 85);
INSERT INTO workshops VALUES(48, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '08:50:00', '12:55:00', '1226', 155, 25);
INSERT INTO workshops VALUES(48, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '08:50:00', '11:15:00', '1406', 135, 45);
INSERT INTO workshops VALUES(48, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '09:40:00', '12:55:00', '1309', 90, 80);
INSERT INTO workshops VALUES(48, 'Wykład z programowania w języku PHP', 'Brak opisu.', '18:00:00', '20:25:00', '520', 175, 80);
INSERT INTO conferences VALUES ('Akademickie konferencje kół naukowych', 'Poznań', 'Długa', '61-740', '48', 0.35);
INSERT INTO conference_prices VALUES(21, '2018-10-03', 260)
INSERT INTO conference_prices VALUES(21, '2018-09-19', 208.0)
INSERT INTO conference_days VALUES(21, '2018-10-03', 1000)
INSERT INTO workshops VALUES(49, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '12:10:00', '14:35:00', '1317', 105, 90);
INSERT INTO workshops VALUES(49, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '15:30:00', '17:05:00', '411', 75, 20);
INSERT INTO workshops VALUES(49, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '11:20:00', '14:35:00', '603', 55, 55);
INSERT INTO workshops VALUES(49, 'Warsztaty z architektur procesorów', 'Brak opisu.', '13:50:00', '17:05:00', '904', 95, 15);
INSERT INTO workshops VALUES(49, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '09:40:00', '11:15:00', '116', 105, 15);
INSERT INTO workshops VALUES(49, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '11:20:00', '12:55:00', '1226', 85, 70);
INSERT INTO conference_days VALUES(21, '2018-10-04', 1000)
INSERT INTO workshops VALUES(50, 'Wykład z uczenia maszynowego', 'Brak opisu.', '10:30:00', '13:45:00', '119', 160, 65);
INSERT INTO workshops VALUES(50, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '08:50:00', '12:55:00', '126', 170, 50);
INSERT INTO workshops VALUES(50, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '08:00:00', '09:35:00', '929', 115, 15);
INSERT INTO conference_days VALUES(21, '2018-10-05', 1000)
INSERT INTO workshops VALUES(51, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '15:30:00', '17:05:00', '426', 175, 95);
INSERT INTO workshops VALUES(51, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '11:20:00', '12:55:00', '111', 90, 35);
INSERT INTO workshops VALUES(51, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '09:40:00', '11:15:00', '1026', 190, 65);
INSERT INTO workshops VALUES(51, 'Wykład z programowania w języku PHP', 'Brak opisu.', '15:30:00', '18:45:00', '114', 80, 80);
INSERT INTO workshops VALUES(51, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '15:30:00', '17:05:00', '509', 65, 20);
INSERT INTO conference_days VALUES(21, '2018-10-06', 1000)
INSERT INTO workshops VALUES(52, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '10:30:00', '14:35:00', '113', 175, 90);
INSERT INTO workshops VALUES(52, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '11:20:00', '15:25:00', '1017', 175, 50);
INSERT INTO workshops VALUES(52, 'Wykład z uczenia maszynowego', 'Brak opisu.', '13:50:00', '16:15:00', '907', 185, 35);
INSERT INTO workshops VALUES(52, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '11:20:00', '12:55:00', '1206', 180, 90);
INSERT INTO workshops VALUES(52, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '16:20:00', '20:25:00', '429', 135, 20);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie kół naukowych', 'Warszawa', 'Słowackiego', '02-495', '31', 0.35);
INSERT INTO conference_prices VALUES(22, '2018-10-12', 200)
INSERT INTO conference_prices VALUES(22, '2018-09-28', 160.0)
INSERT INTO conference_days VALUES(22, '2018-10-12', 1000)
INSERT INTO workshops VALUES(53, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '12:10:00', '15:25:00', '1105', 75, 10);
INSERT INTO workshops VALUES(53, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '14:40:00', '18:45:00', '303', 80, 90);
INSERT INTO workshops VALUES(53, 'Wykład z algorytmów grafowych', 'Brak opisu.', '09:40:00', '13:45:00', '222', 170, 45);
INSERT INTO workshops VALUES(53, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '14:40:00', '17:05:00', '1301', 70, 75);
INSERT INTO conference_days VALUES(22, '2018-10-13', 1000)
INSERT INTO workshops VALUES(54, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '11:20:00', '15:25:00', '824', 70, 10);
INSERT INTO workshops VALUES(54, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '15:30:00', '19:35:00', '803', 80, 20);
INSERT INTO workshops VALUES(54, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '11:20:00', '15:25:00', '118', 155, 85);
INSERT INTO workshops VALUES(54, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '16:20:00', '20:25:00', '1021', 90, 90);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistyczne', 'Szczecin', 'Długa', '71-627', '0', 0.95);
INSERT INTO conference_prices VALUES(23, '2018-10-19', 300)
INSERT INTO conference_prices VALUES(23, '2018-10-05', 240.0)
INSERT INTO conference_days VALUES(23, '2018-10-19', 1000)
INSERT INTO workshops VALUES(55, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '14:40:00', '16:15:00', '1223', 150, 75);
INSERT INTO workshops VALUES(55, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '16:20:00', '18:45:00', '1410', 100, 80);
INSERT INTO workshops VALUES(55, 'Wykład z uczenia maszynowego', 'Brak opisu.', '09:40:00', '11:15:00', '9', 195, 25);
INSERT INTO workshops VALUES(55, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '16:20:00', '19:35:00', '1002', 110, 15);
INSERT INTO workshops VALUES(55, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '08:50:00', '10:25:00', '309', 90, 55);
INSERT INTO workshops VALUES(55, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '18:00:00', '20:25:00', '511', 125, 60);
INSERT INTO conference_days VALUES(23, '2018-10-20', 1000)
INSERT INTO workshops VALUES(56, 'Wykład z teorii kompilacji', 'Brak opisu.', '14:40:00', '16:15:00', '212', 95, 15);
INSERT INTO workshops VALUES(56, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '12:10:00', '15:25:00', '523', 185, 15);
INSERT INTO workshops VALUES(56, 'Wykład z systemów operacyjnych', 'Brak opisu.', '13:50:00', '17:05:00', '812', 75, 10);
INSERT INTO workshops VALUES(56, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '11:20:00', '12:55:00', '117', 100, 40);
INSERT INTO workshops VALUES(56, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '15:30:00', '18:45:00', '919', 170, 45);
INSERT INTO conferences VALUES ('Akademickie konferencje miłośników programowania', 'Stalowa Wola', 'Słowackiego', '37-450', '2', 0.5);
INSERT INTO conference_prices VALUES(24, '2018-11-01', 190)
INSERT INTO conference_prices VALUES(24, '2018-10-18', 152.0)
INSERT INTO conference_days VALUES(24, '2018-11-01', 1000)
INSERT INTO workshops VALUES(57, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '13:00:00', '14:35:00', '1304', 105, 60);
INSERT INTO workshops VALUES(57, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '08:00:00', '09:35:00', '717', 190, 85);
INSERT INTO workshops VALUES(57, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '13:50:00', '17:55:00', '1027', 60, 75);
INSERT INTO conference_days VALUES(24, '2018-11-02', 1000)
INSERT INTO workshops VALUES(58, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '17:10:00', '19:35:00', '325', 170, 95);
INSERT INTO workshops VALUES(58, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '11:20:00', '14:35:00', '1208', 185, 35);
INSERT INTO workshops VALUES(58, 'Wykład z architektur procesorów', 'Brak opisu.', '08:00:00', '11:15:00', '1129', 65, 90);
INSERT INTO workshops VALUES(58, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '09:40:00', '11:15:00', '412', 135, 95);
INSERT INTO workshops VALUES(58, 'Warsztaty z kryptografii', 'Brak opisu.', '11:20:00', '14:35:00', '606', 170, 10);
INSERT INTO conference_days VALUES(24, '2018-11-03', 1000)
INSERT INTO workshops VALUES(59, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '13:00:00', '15:25:00', '215', 55, 70);
INSERT INTO workshops VALUES(59, 'Wykład z teorii kompilacji', 'Brak opisu.', '09:40:00', '11:15:00', '909', 65, 35);
INSERT INTO workshops VALUES(59, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '14:40:00', '17:05:00', '1221', 160, 65);
INSERT INTO workshops VALUES(59, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '09:40:00', '13:45:00', '204', 75, 75);
INSERT INTO workshops VALUES(59, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '09:40:00', '13:45:00', '1226', 130, 30);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie miłośników programowania', 'Kielce', 'Armii Krajowej', '25-511', '47', 0.9);
INSERT INTO conference_prices VALUES(25, '2018-11-15', 100)
INSERT INTO conference_prices VALUES(25, '2018-11-01', 80.0)
INSERT INTO conference_days VALUES(25, '2018-11-15', 1000)
INSERT INTO workshops VALUES(60, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '14:40:00', '17:55:00', '810', 105, 30);
INSERT INTO workshops VALUES(60, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '15:30:00', '17:05:00', '1125', 140, 40);
INSERT INTO workshops VALUES(60, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '17:10:00', '20:25:00', '902', 60, 20);
INSERT INTO conference_days VALUES(25, '2018-11-16', 1000)
INSERT INTO workshops VALUES(61, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '18:00:00', '19:35:00', '1210', 120, 55);
INSERT INTO workshops VALUES(61, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '08:50:00', '12:05:00', '622', 75, 95);
INSERT INTO workshops VALUES(61, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '11:20:00', '12:55:00', '1312', 185, 65);
INSERT INTO workshops VALUES(61, 'Wykład z systemów operacyjnych', 'Brak opisu.', '12:10:00', '14:35:00', '509', 135, 55);
INSERT INTO workshops VALUES(61, 'Warsztaty z architektur procesorów', 'Brak opisu.', '11:20:00', '15:25:00', '712', 145, 65);
INSERT INTO conference_days VALUES(25, '2018-11-17', 1000)
INSERT INTO workshops VALUES(62, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '13:50:00', '17:05:00', '403', 80, 70);
INSERT INTO workshops VALUES(62, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '15:30:00', '17:55:00', '1419', 125, 10);
INSERT INTO workshops VALUES(62, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '09:40:00', '12:05:00', '820', 105, 20);
INSERT INTO conferences VALUES ('Powszechne konferencje informatyków', 'Szczecin', 'Dębowa', '71-627', '21', 0.4);
INSERT INTO conference_prices VALUES(26, '2018-12-19', 330)
INSERT INTO conference_prices VALUES(26, '2018-12-05', 264.0)
INSERT INTO conference_days VALUES(26, '2018-12-19', 1000)
INSERT INTO workshops VALUES(63, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '17:10:00', '19:35:00', '1116', 160, 65);
INSERT INTO workshops VALUES(63, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '09:40:00', '12:05:00', '309', 75, 25);
INSERT INTO workshops VALUES(63, 'Wykład z systemów ekspertowych', 'Brak opisu.', '08:50:00', '12:05:00', '308', 65, 45);
INSERT INTO conference_days VALUES(26, '2018-12-20', 1000)
INSERT INTO workshops VALUES(64, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '12:10:00', '13:45:00', '711', 145, 65);
INSERT INTO workshops VALUES(64, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '16:20:00', '20:25:00', '224', 165, 35);
INSERT INTO workshops VALUES(64, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '08:50:00', '12:05:00', '608', 130, 25);
INSERT INTO workshops VALUES(64, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '17:10:00', '20:25:00', '1225', 100, 95);
INSERT INTO workshops VALUES(64, 'Wykład z programowania w języku C++', 'Brak opisu.', '11:20:00', '15:25:00', '311', 85, 60);
INSERT INTO conference_days VALUES(26, '2018-12-21', 1000)
INSERT INTO workshops VALUES(65, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '09:40:00', '13:45:00', '1020', 170, 10);
INSERT INTO workshops VALUES(65, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '13:50:00', '17:05:00', '1108', 100, 65);
INSERT INTO workshops VALUES(65, 'Wykład z systemów ekspertowych', 'Brak opisu.', '08:00:00', '10:25:00', '10', 65, 15);
INSERT INTO workshops VALUES(65, 'Wykład z systemów ekspertowych', 'Brak opisu.', '10:30:00', '12:05:00', '10', 165, 25);
INSERT INTO workshops VALUES(65, 'Wykład z programowania obiektowego', 'Brak opisu.', '12:10:00', '13:45:00', '925', 195, 40);
INSERT INTO conference_days VALUES(26, '2018-12-22', 1000)
INSERT INTO workshops VALUES(66, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '18:00:00', '20:25:00', '1020', 145, 90);
INSERT INTO workshops VALUES(66, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '18:00:00', '20:25:00', '208', 180, 10);
INSERT INTO workshops VALUES(66, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '14:40:00', '18:45:00', '316', 85, 45);
INSERT INTO workshops VALUES(66, 'Wykład z programowania w języku Python', 'Brak opisu.', '10:30:00', '13:45:00', '1026', 140, 95);
INSERT INTO workshops VALUES(66, 'Wykład z programowania w języku Rust', 'Brak opisu.', '10:30:00', '12:55:00', '1228', 65, 55);
INSERT INTO conferences VALUES ('Studencki festiwal kół naukowych', 'Lublin', 'Armii Krajowej', '20-410', '18', 0.0);
INSERT INTO conference_prices VALUES(27, '2018-12-26', 130)
INSERT INTO conference_prices VALUES(27, '2018-12-12', 104.0)
INSERT INTO conference_days VALUES(27, '2018-12-26', 1000)
INSERT INTO workshops VALUES(67, 'Warsztaty z programowania równoległego', 'Brak opisu.', '15:30:00', '19:35:00', '920', 80, 75);
INSERT INTO workshops VALUES(67, 'Wykład z programowania obiektowego', 'Brak opisu.', '13:00:00', '16:15:00', '527', 155, 95);
INSERT INTO workshops VALUES(67, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '08:00:00', '11:15:00', '1417', 160, 60);
INSERT INTO workshops VALUES(67, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '12:10:00', '14:35:00', '1224', 110, 90);
INSERT INTO workshops VALUES(67, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '09:40:00', '11:15:00', '24', 100, 10);
INSERT INTO conference_days VALUES(27, '2018-12-27', 1000)
INSERT INTO workshops VALUES(68, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '10:30:00', '12:05:00', '1103', 155, 45);
INSERT INTO workshops VALUES(68, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '12:10:00', '16:15:00', '1428', 115, 20);
INSERT INTO workshops VALUES(68, 'Wykład z systemów operacyjnych', 'Brak opisu.', '18:00:00', '20:25:00', '1417', 65, 85);
INSERT INTO conference_days VALUES(27, '2018-12-28', 1000)
INSERT INTO workshops VALUES(69, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '08:50:00', '12:55:00', '825', 185, 90);
INSERT INTO workshops VALUES(69, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '09:40:00', '12:05:00', '515', 165, 25);
INSERT INTO workshops VALUES(69, 'Warsztaty z programowania równoległego', 'Brak opisu.', '16:20:00', '19:35:00', '225', 175, 25);
INSERT INTO workshops VALUES(69, 'Wykład z programowania równoległego', 'Brak opisu.', '17:10:00', '20:25:00', '1113', 95, 10);
INSERT INTO workshops VALUES(69, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '12:10:00', '15:25:00', '1026', 100, 85);
INSERT INTO conference_days VALUES(27, '2018-12-29', 1000)
INSERT INTO workshops VALUES(70, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '08:00:00', '10:25:00', '618', 145, 25);
INSERT INTO workshops VALUES(70, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '10:30:00', '14:35:00', '404', 170, 70);
INSERT INTO conferences VALUES ('Studenckie forum informatyczne', 'Warszawa', 'Armii Krajowej', '02-495', '27', 0.6);
INSERT INTO conference_prices VALUES(28, '2019-01-18', 300)
INSERT INTO conference_prices VALUES(28, '2019-01-04', 240.0)
INSERT INTO conference_days VALUES(28, '2019-01-18', 1000)
INSERT INTO workshops VALUES(71, 'Wykład z systemów ekspertowych', 'Brak opisu.', '18:00:00', '20:25:00', '5', 190, 10);
INSERT INTO workshops VALUES(71, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '17:10:00', '19:35:00', '1404', 145, 70);
INSERT INTO workshops VALUES(71, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '18:00:00', '19:35:00', '807', 105, 15);
INSERT INTO workshops VALUES(71, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '13:50:00', '16:15:00', '1122', 55, 70);
INSERT INTO workshops VALUES(71, 'Wykład z uczenia maszynowego', 'Brak opisu.', '13:50:00', '17:05:00', '911', 165, 55);
INSERT INTO conference_days VALUES(28, '2019-01-19', 1000)
INSERT INTO workshops VALUES(72, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '13:50:00', '17:05:00', '521', 165, 75);
INSERT INTO workshops VALUES(72, 'Wykład z programowania w języku Python', 'Brak opisu.', '14:40:00', '16:15:00', '704', 125, 35);
INSERT INTO workshops VALUES(72, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '08:50:00', '10:25:00', '703', 170, 80);
INSERT INTO workshops VALUES(72, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '13:50:00', '17:05:00', '316', 100, 20);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie informatyków', 'Warszawa', '3 Maja', '02-495', '41', 1.0);
INSERT INTO conference_prices VALUES(29, '2019-02-01', 270)
INSERT INTO conference_prices VALUES(29, '2019-01-18', 216.0)
INSERT INTO conference_days VALUES(29, '2019-02-01', 1000)
INSERT INTO workshops VALUES(73, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '17:10:00', '19:35:00', '819', 190, 15);
INSERT INTO workshops VALUES(73, 'Wykład z algorytmów grafowych', 'Brak opisu.', '16:20:00', '19:35:00', '1419', 175, 70);
INSERT INTO workshops VALUES(73, 'Warsztaty z programowania równoległego', 'Brak opisu.', '08:00:00', '10:25:00', '701', 190, 65);
INSERT INTO workshops VALUES(73, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '17:10:00', '19:35:00', '1014', 60, 45);
INSERT INTO workshops VALUES(73, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '15:30:00', '19:35:00', '811', 50, 85);
INSERT INTO conference_days VALUES(29, '2019-02-02', 1000)
INSERT INTO workshops VALUES(74, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '10:30:00', '14:35:00', '106', 180, 30);
INSERT INTO workshops VALUES(74, 'Wykład z programowania w języku Rust', 'Brak opisu.', '08:00:00', '11:15:00', '322', 165, 25);
INSERT INTO workshops VALUES(74, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '15:30:00', '17:05:00', '507', 195, 90);
INSERT INTO workshops VALUES(74, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '11:20:00', '12:55:00', '1127', 150, 30);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje kół naukowych', 'Szczecin', 'Krótka', '71-627', '35', 0.85);
INSERT INTO conference_prices VALUES(30, '2019-02-14', 240)
INSERT INTO conference_prices VALUES(30, '2019-01-31', 192.0)
INSERT INTO conference_days VALUES(30, '2019-02-14', 1000)
INSERT INTO workshops VALUES(75, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '16:20:00', '18:45:00', '706', 145, 85);
INSERT INTO workshops VALUES(75, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '08:00:00', '12:05:00', '200', 125, 60);
INSERT INTO workshops VALUES(75, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '08:00:00', '11:15:00', '127', 65, 85);
INSERT INTO conference_days VALUES(30, '2019-02-15', 1000)
INSERT INTO workshops VALUES(76, 'Wykład z kryptografii', 'Brak opisu.', '18:00:00', '20:25:00', '11', 50, 90);
INSERT INTO workshops VALUES(76, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '13:50:00', '15:25:00', '111', 105, 10);
INSERT INTO workshops VALUES(76, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '15:30:00', '17:05:00', '3', 80, 45);
INSERT INTO workshops VALUES(76, 'Warsztaty z kryptografii', 'Brak opisu.', '13:00:00', '15:25:00', '1105', 60, 30);
INSERT INTO conference_days VALUES(30, '2019-02-16', 1000)
INSERT INTO workshops VALUES(77, 'Wykład z teorii kompilacji', 'Brak opisu.', '12:10:00', '13:45:00', '323', 75, 80);
INSERT INTO workshops VALUES(77, 'Wykład z systemów operacyjnych', 'Brak opisu.', '12:10:00', '13:45:00', '1118', 140, 25);
INSERT INTO workshops VALUES(77, 'Wykład z grafiki komputerowej', 'Brak opisu.', '13:00:00', '14:35:00', '409', 75, 95);
INSERT INTO workshops VALUES(77, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '11:20:00', '15:25:00', '925', 80, 15);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie miłośników programowania', 'Katowice', 'Krótka', '40-236', '18', 0.4);
INSERT INTO conference_prices VALUES(31, '2019-03-07', 400)
INSERT INTO conference_prices VALUES(31, '2019-02-21', 320.0)
INSERT INTO conference_days VALUES(31, '2019-03-07', 1000)
INSERT INTO workshops VALUES(78, 'Wykład z programowania w języku C++', 'Brak opisu.', '13:50:00', '16:15:00', '1425', 185, 45);
INSERT INTO workshops VALUES(78, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '14:40:00', '17:05:00', '2', 155, 55);
INSERT INTO workshops VALUES(78, 'Wykład z programowania w języku Python', 'Brak opisu.', '17:10:00', '19:35:00', '1019', 170, 45);
INSERT INTO workshops VALUES(78, 'Wykład z systemów operacyjnych', 'Brak opisu.', '17:10:00', '20:25:00', '501', 125, 30);
INSERT INTO workshops VALUES(78, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '11:20:00', '14:35:00', '1424', 115, 65);
INSERT INTO conference_days VALUES(31, '2019-03-08', 1000)
INSERT INTO workshops VALUES(79, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '08:00:00', '12:05:00', '1126', 110, 55);
INSERT INTO workshops VALUES(79, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '16:20:00', '18:45:00', '1417', 70, 15);
INSERT INTO workshops VALUES(79, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '12:10:00', '16:15:00', '1100', 170, 10);
INSERT INTO conference_days VALUES(31, '2019-03-09', 1000)
INSERT INTO workshops VALUES(80, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '10:30:00', '14:35:00', '1214', 135, 80);
INSERT INTO workshops VALUES(80, 'Warsztaty z programowania równoległego', 'Brak opisu.', '17:10:00', '19:35:00', '829', 170, 80);
INSERT INTO workshops VALUES(80, 'Wykład z programowania równoległego', 'Brak opisu.', '09:40:00', '12:55:00', '423', 165, 65);
INSERT INTO workshops VALUES(80, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '13:00:00', '16:15:00', '517', 130, 25);
INSERT INTO conferences VALUES ('Akademickie konferencje informatyków', 'Szczecin', 'Lipowa', '71-627', '31', 0.1);
INSERT INTO conference_prices VALUES(32, '2019-03-28', 450)
INSERT INTO conference_prices VALUES(32, '2019-03-14', 360.0)
INSERT INTO conference_days VALUES(32, '2019-03-28', 1000)
INSERT INTO workshops VALUES(81, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '11:20:00', '14:35:00', '1419', 80, 50);
INSERT INTO workshops VALUES(81, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '15:30:00', '19:35:00', '714', 115, 30);
INSERT INTO workshops VALUES(81, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '16:20:00', '19:35:00', '100', 65, 60);
INSERT INTO workshops VALUES(81, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '11:20:00', '13:45:00', '405', 155, 30);
INSERT INTO conference_days VALUES(32, '2019-03-29', 1000)
INSERT INTO workshops VALUES(82, 'Wykład z teorii kompilacji', 'Brak opisu.', '10:30:00', '13:45:00', '1319', 180, 80);
INSERT INTO workshops VALUES(82, 'Wykład z uczenia maszynowego', 'Brak opisu.', '18:00:00', '20:25:00', '14', 60, 35);
INSERT INTO workshops VALUES(82, 'Wykład z systemów operacyjnych', 'Brak opisu.', '12:10:00', '13:45:00', '418', 60, 15);
INSERT INTO workshops VALUES(82, 'Wykład z programowania w języku Rust', 'Brak opisu.', '17:10:00', '20:25:00', '329', 115, 95);
INSERT INTO conference_days VALUES(32, '2019-03-30', 1000)
INSERT INTO workshops VALUES(83, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '12:10:00', '13:45:00', '710', 60, 90);
INSERT INTO workshops VALUES(83, 'Wykład z programowania w języku PHP', 'Brak opisu.', '11:20:00', '12:55:00', '1114', 180, 85);
INSERT INTO workshops VALUES(83, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '16:20:00', '20:25:00', '120', 150, 90);
INSERT INTO workshops VALUES(83, 'Wykład z programowania w języku Scala', 'Brak opisu.', '13:00:00', '14:35:00', '1317', 185, 70);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistyczne', 'Katowice', 'Słowackiego', '40-236', '34', 0.0);
INSERT INTO conference_prices VALUES(33, '2019-04-05', 250)
INSERT INTO conference_prices VALUES(33, '2019-03-22', 200.0)
INSERT INTO conference_days VALUES(33, '2019-04-05', 1000)
INSERT INTO workshops VALUES(84, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '13:00:00', '14:35:00', '315', 175, 85);
INSERT INTO workshops VALUES(84, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '08:00:00', '09:35:00', '812', 130, 70);
INSERT INTO workshops VALUES(84, 'Wykład z grafiki komputerowej', 'Brak opisu.', '08:50:00', '11:15:00', '601', 55, 80);
INSERT INTO workshops VALUES(84, 'Wykład z programowania obiektowego', 'Brak opisu.', '12:10:00', '15:25:00', '3', 185, 70);
INSERT INTO workshops VALUES(84, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '18:00:00', '20:25:00', '300', 95, 25);
INSERT INTO conference_days VALUES(33, '2019-04-06', 1000)
INSERT INTO workshops VALUES(85, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '12:10:00', '16:15:00', '112', 190, 90);
INSERT INTO workshops VALUES(85, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '14:40:00', '18:45:00', '1412', 165, 90);
INSERT INTO workshops VALUES(85, 'Wykład z architektur procesorów', 'Brak opisu.', '18:00:00', '20:25:00', '718', 120, 45);
INSERT INTO conferences VALUES ('Studenckie forum informatyczne', 'Kielce', 'Krótka', '25-511', '3', 0.35);
INSERT INTO conference_prices VALUES(34, '2019-04-19', 450)
INSERT INTO conference_prices VALUES(34, '2019-04-05', 360.0)
INSERT INTO conference_days VALUES(34, '2019-04-19', 1000)
INSERT INTO workshops VALUES(86, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '08:50:00', '12:55:00', '624', 70, 90);
INSERT INTO workshops VALUES(86, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '11:20:00', '14:35:00', '404', 170, 45);
INSERT INTO workshops VALUES(86, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '08:50:00', '12:55:00', '326', 130, 35);
INSERT INTO workshops VALUES(86, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '14:40:00', '16:15:00', '515', 155, 45);
INSERT INTO conference_days VALUES(34, '2019-04-20', 1000)
INSERT INTO workshops VALUES(87, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '14:40:00', '17:55:00', '913', 50, 65);
INSERT INTO workshops VALUES(87, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '09:40:00', '12:55:00', '1316', 120, 80);
INSERT INTO workshops VALUES(87, 'Warsztaty z architektur procesorów', 'Brak opisu.', '11:20:00', '13:45:00', '1212', 195, 75);
INSERT INTO workshops VALUES(87, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '12:10:00', '15:25:00', '109', 145, 90);
INSERT INTO workshops VALUES(87, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '17:10:00', '19:35:00', '205', 60, 75);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistyczne', 'Wrocław', 'Wojska Polskiego', '52-119', '29', 0.45);
INSERT INTO conference_prices VALUES(35, '2019-04-26', 120)
INSERT INTO conference_prices VALUES(35, '2019-04-12', 96.0)
INSERT INTO conference_days VALUES(35, '2019-04-26', 1000)
INSERT INTO workshops VALUES(88, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '08:50:00', '10:25:00', '1119', 150, 35);
INSERT INTO workshops VALUES(88, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '08:00:00', '11:15:00', '1223', 135, 20);
INSERT INTO workshops VALUES(88, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '14:40:00', '17:55:00', '505', 145, 75);
INSERT INTO workshops VALUES(88, 'Wykład z programowania w języku Scala', 'Brak opisu.', '17:10:00', '20:25:00', '1322', 55, 90);
INSERT INTO workshops VALUES(88, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '14:40:00', '16:15:00', '1219', 165, 60);
INSERT INTO conference_days VALUES(35, '2019-04-27', 1000)
INSERT INTO workshops VALUES(89, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '09:40:00', '12:05:00', '1127', 50, 55);
INSERT INTO workshops VALUES(89, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '13:00:00', '17:05:00', '413', 80, 65);
INSERT INTO workshops VALUES(89, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '16:20:00', '17:55:00', '1103', 110, 55);
INSERT INTO workshops VALUES(89, 'Wykład z uczenia maszynowego', 'Brak opisu.', '13:50:00', '17:55:00', '519', 80, 35);
INSERT INTO workshops VALUES(89, 'Wykład z teorii kompilacji', 'Brak opisu.', '13:00:00', '16:15:00', '1215', 195, 85);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje miłośników programowania', 'Szczecin', 'Mickiewicza', '71-627', '18', 0.1);
INSERT INTO conference_prices VALUES(36, '2019-05-03', 430)
INSERT INTO conference_prices VALUES(36, '2019-04-19', 344.0)
INSERT INTO conference_days VALUES(36, '2019-05-03', 1000)
INSERT INTO workshops VALUES(90, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '17:10:00', '20:25:00', '1123', 50, 45);
INSERT INTO workshops VALUES(90, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '09:40:00', '12:05:00', '1404', 135, 40);
INSERT INTO workshops VALUES(90, 'Wykład z systemów ekspertowych', 'Brak opisu.', '10:30:00', '13:45:00', '809', 120, 45);
INSERT INTO conference_days VALUES(36, '2019-05-04', 1000)
INSERT INTO workshops VALUES(91, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '11:20:00', '12:55:00', '1129', 90, 55);
INSERT INTO workshops VALUES(91, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '08:50:00', '12:05:00', '919', 50, 50);
INSERT INTO workshops VALUES(91, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '08:00:00', '09:35:00', '1400', 55, 65);
INSERT INTO workshops VALUES(91, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '14:40:00', '17:55:00', '425', 165, 85);
INSERT INTO conferences VALUES ('Studencki festiwal kół naukowych', 'Poznań', 'Słowackiego', '61-740', '25', 0.35);
INSERT INTO conference_prices VALUES(37, '2019-05-30', 470)
INSERT INTO conference_prices VALUES(37, '2019-05-16', 376.0)
INSERT INTO conference_days VALUES(37, '2019-05-30', 1000)
INSERT INTO workshops VALUES(92, 'Wykład z programowania w języku Scala', 'Brak opisu.', '18:00:00', '20:25:00', '327', 145, 45);
INSERT INTO workshops VALUES(92, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '17:10:00', '20:25:00', '1307', 55, 65);
INSERT INTO workshops VALUES(92, 'Wykład z uczenia maszynowego', 'Brak opisu.', '16:20:00', '20:25:00', '722', 65, 80);
INSERT INTO conference_days VALUES(37, '2019-05-31', 1000)
INSERT INTO workshops VALUES(93, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '17:10:00', '18:45:00', '502', 50, 70);
INSERT INTO workshops VALUES(93, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '13:00:00', '14:35:00', '327', 120, 70);
INSERT INTO workshops VALUES(93, 'Wykład z systemów operacyjnych', 'Brak opisu.', '18:00:00', '20:25:00', '1217', 105, 20);
INSERT INTO workshops VALUES(93, 'Wykład z grafiki komputerowej', 'Brak opisu.', '12:10:00', '13:45:00', '1005', 130, 65);
INSERT INTO workshops VALUES(93, 'Wykład z systemów ekspertowych', 'Brak opisu.', '08:50:00', '10:25:00', '1105', 65, 50);
INSERT INTO conference_days VALUES(37, '2019-06-01', 1000)
INSERT INTO workshops VALUES(94, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '08:50:00', '12:05:00', '1416', 155, 80);
INSERT INTO workshops VALUES(94, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '10:30:00', '14:35:00', '214', 135, 35);
INSERT INTO workshops VALUES(94, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '16:20:00', '20:25:00', '218', 125, 25);
INSERT INTO workshops VALUES(94, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '12:10:00', '14:35:00', '1011', 170, 95);
INSERT INTO workshops VALUES(94, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '14:40:00', '18:45:00', '902', 100, 35);
INSERT INTO workshops VALUES(94, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '13:50:00', '17:05:00', '221', 160, 60);
INSERT INTO conferences VALUES ('Studencki festiwal informatyczne', 'Kraków', 'Lipowa', '30-055', '5', 0.65);
INSERT INTO conference_prices VALUES(38, '2019-06-14', 250)
INSERT INTO conference_prices VALUES(38, '2019-05-31', 200.0)
INSERT INTO conference_days VALUES(38, '2019-06-14', 1000)
INSERT INTO workshops VALUES(95, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '16:20:00', '20:25:00', '724', 185, 95);
INSERT INTO workshops VALUES(95, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '11:20:00', '13:45:00', '1207', 85, 95);
INSERT INTO workshops VALUES(95, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '16:20:00', '19:35:00', '602', 165, 35);
INSERT INTO workshops VALUES(95, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '15:30:00', '17:55:00', '906', 95, 15);
INSERT INTO workshops VALUES(95, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '08:00:00', '11:15:00', '1204', 155, 50);
INSERT INTO conference_days VALUES(38, '2019-06-15', 1000)
INSERT INTO workshops VALUES(96, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '11:20:00', '12:55:00', '128', 65, 55);
INSERT INTO workshops VALUES(96, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '17:10:00', '18:45:00', '400', 55, 30);
INSERT INTO workshops VALUES(96, 'Wykład z programowania równoległego', 'Brak opisu.', '12:10:00', '14:35:00', '327', 50, 65);
INSERT INTO workshops VALUES(96, 'Wykład z programowania w języku Java', 'Brak opisu.', '13:00:00', '17:05:00', '1309', 170, 90);
INSERT INTO workshops VALUES(96, 'Wykład z grafiki komputerowej', 'Brak opisu.', '08:50:00', '12:55:00', '1409', 160, 55);
INSERT INTO conferences VALUES ('Studenckie forum programistów', 'Kielce', 'Wojska Polskiego', '25-511', '38', 0.95);
INSERT INTO conference_prices VALUES(39, '2019-06-21', 420)
INSERT INTO conference_prices VALUES(39, '2019-06-07', 336.0)
INSERT INTO conference_days VALUES(39, '2019-06-21', 1000)
INSERT INTO workshops VALUES(97, 'Wykład z programowania obiektowego', 'Brak opisu.', '09:40:00', '11:15:00', '101', 135, 55);
INSERT INTO workshops VALUES(97, 'Warsztaty z architektur procesorów', 'Brak opisu.', '16:20:00', '20:25:00', '227', 120, 20);
INSERT INTO workshops VALUES(97, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '13:00:00', '15:25:00', '22', 70, 55);
INSERT INTO workshops VALUES(97, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '13:50:00', '17:05:00', '928', 115, 55);
INSERT INTO workshops VALUES(97, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '12:10:00', '13:45:00', '5', 150, 85);
INSERT INTO conference_days VALUES(39, '2019-06-22', 1000)
INSERT INTO workshops VALUES(98, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '11:20:00', '13:45:00', '126', 195, 60);
INSERT INTO workshops VALUES(98, 'Wykład z kryptografii', 'Brak opisu.', '18:00:00', '20:25:00', '916', 130, 90);
INSERT INTO workshops VALUES(98, 'Wykład z grafiki komputerowej', 'Brak opisu.', '08:50:00', '12:55:00', '809', 170, 60);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie miłośników programowania', 'Kielce', 'Krótka', '25-511', '41', 0.75);
INSERT INTO conference_prices VALUES(40, '2019-07-05', 260)
INSERT INTO conference_prices VALUES(40, '2019-06-21', 208.0)
INSERT INTO conference_days VALUES(40, '2019-07-05', 1000)
INSERT INTO workshops VALUES(99, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '16:20:00', '18:45:00', '1405', 70, 75);
INSERT INTO workshops VALUES(99, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '18:00:00', '19:35:00', '13', 150, 15);
INSERT INTO workshops VALUES(99, 'Wykład z programowania w języku Python', 'Brak opisu.', '08:00:00', '10:25:00', '801', 130, 65);
INSERT INTO conference_days VALUES(40, '2019-07-06', 1000)
INSERT INTO workshops VALUES(100, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '18:00:00', '20:25:00', '509', 125, 45);
INSERT INTO workshops VALUES(100, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '08:00:00', '09:35:00', '521', 160, 95);
INSERT INTO workshops VALUES(100, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '17:10:00', '20:25:00', '526', 170, 50);
INSERT INTO workshops VALUES(100, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '14:40:00', '17:55:00', '1307', 100, 95);
INSERT INTO conferences VALUES ('Studenckie forum programistyczne', 'Kielce', 'Mickiewicza', '25-511', '30', 0.55);
INSERT INTO conference_prices VALUES(41, '2019-07-19', 480)
INSERT INTO conference_prices VALUES(41, '2019-07-05', 384.0)
INSERT INTO conference_days VALUES(41, '2019-07-19', 1000)
INSERT INTO workshops VALUES(101, 'Wykład z algorytmów grafowych', 'Brak opisu.', '08:00:00', '12:05:00', '925', 170, 30);
INSERT INTO workshops VALUES(101, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '17:10:00', '18:45:00', '1416', 70, 30);
INSERT INTO workshops VALUES(101, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '08:50:00', '12:55:00', '706', 55, 60);
INSERT INTO workshops VALUES(101, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '08:00:00', '11:15:00', '715', 75, 65);
INSERT INTO conference_days VALUES(41, '2019-07-20', 1000)
INSERT INTO workshops VALUES(102, 'Warsztaty z programowania równoległego', 'Brak opisu.', '14:40:00', '17:55:00', '903', 180, 70);
INSERT INTO workshops VALUES(102, 'Wykład z programowania w języku Java', 'Brak opisu.', '08:00:00', '11:15:00', '729', 55, 35);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistyczne', 'Poznań', 'Mickiewicza', '61-740', '17', 0.6);
INSERT INTO conference_prices VALUES(42, '2019-07-26', 210)
INSERT INTO conference_prices VALUES(42, '2019-07-12', 168.0)
INSERT INTO conference_days VALUES(42, '2019-07-26', 1000)
INSERT INTO workshops VALUES(103, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '13:00:00', '17:05:00', '207', 195, 50);
INSERT INTO workshops VALUES(103, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '09:40:00', '11:15:00', '1302', 165, 50);
INSERT INTO workshops VALUES(103, 'Warsztaty z programowania równoległego', 'Brak opisu.', '17:10:00', '19:35:00', '221', 105, 35);
INSERT INTO conference_days VALUES(42, '2019-07-27', 1000)
INSERT INTO workshops VALUES(104, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '18:00:00', '19:35:00', '1018', 90, 75);
INSERT INTO workshops VALUES(104, 'Wykład z kryptografii', 'Brak opisu.', '08:50:00', '10:25:00', '1125', 195, 70);
INSERT INTO workshops VALUES(104, 'Wykład z kryptografii', 'Brak opisu.', '11:20:00', '12:55:00', '715', 150, 35);
INSERT INTO workshops VALUES(104, 'Wykład z systemów ekspertowych', 'Brak opisu.', '15:30:00', '17:05:00', '923', 170, 40);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje programistów', 'Szczecin', 'Mickiewicza', '71-627', '5', 0.6);
INSERT INTO conference_prices VALUES(43, '2019-08-08', 400)
INSERT INTO conference_prices VALUES(43, '2019-07-25', 320.0)
INSERT INTO conference_days VALUES(43, '2019-08-08', 1000)
INSERT INTO workshops VALUES(105, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '11:20:00', '12:55:00', '803', 120, 30);
INSERT INTO workshops VALUES(105, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '17:10:00', '18:45:00', '919', 140, 20);
INSERT INTO workshops VALUES(105, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '17:10:00', '20:25:00', '908', 50, 90);
INSERT INTO conference_days VALUES(43, '2019-08-09', 1000)
INSERT INTO workshops VALUES(106, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '12:10:00', '13:45:00', '1125', 120, 80);
INSERT INTO workshops VALUES(106, 'Wykład z programowania w języku Python', 'Brak opisu.', '09:40:00', '13:45:00', '1128', 85, 60);
INSERT INTO workshops VALUES(106, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '18:00:00', '19:35:00', '817', 145, 95);
INSERT INTO conference_days VALUES(43, '2019-08-10', 1000)
INSERT INTO workshops VALUES(107, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '13:00:00', '15:25:00', '302', 170, 50);
INSERT INTO workshops VALUES(107, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '18:00:00', '20:25:00', '1414', 175, 70);
INSERT INTO workshops VALUES(107, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '08:50:00', '10:25:00', '1122', 100, 75);
INSERT INTO workshops VALUES(107, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '16:20:00', '19:35:00', '507', 175, 65);
INSERT INTO workshops VALUES(107, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '08:00:00', '12:05:00', '625', 120, 20);
INSERT INTO conferences VALUES ('Studenckie forum kół naukowych', 'Lublin', 'Długa', '20-410', '36', 0.7);
INSERT INTO conference_prices VALUES(44, '2019-09-06', 460)
INSERT INTO conference_prices VALUES(44, '2019-08-23', 368.0)
INSERT INTO conference_days VALUES(44, '2019-09-06', 1000)
INSERT INTO workshops VALUES(108, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '08:00:00', '09:35:00', '1320', 140, 85);
INSERT INTO workshops VALUES(108, 'Wykład z programowania w języku Java', 'Brak opisu.', '18:00:00', '20:25:00', '419', 155, 95);
INSERT INTO workshops VALUES(108, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '08:50:00', '11:15:00', '223', 75, 50);
INSERT INTO workshops VALUES(108, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '12:10:00', '14:35:00', '1314', 60, 70);
INSERT INTO conference_days VALUES(44, '2019-09-07', 1000)
INSERT INTO workshops VALUES(109, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '13:00:00', '15:25:00', '704', 160, 60);
INSERT INTO workshops VALUES(109, 'Wykład z architektur procesorów', 'Brak opisu.', '13:00:00', '14:35:00', '1405', 75, 45);
INSERT INTO workshops VALUES(109, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '12:10:00', '16:15:00', '511', 115, 35);
INSERT INTO workshops VALUES(109, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '14:40:00', '17:05:00', '4', 50, 45);
INSERT INTO conferences VALUES ('Studenckie warsztaty programistów', 'Wrocław', 'Krótka', '52-119', '8', 0.6);
INSERT INTO conference_prices VALUES(45, '2019-09-20', 350)
INSERT INTO conference_prices VALUES(45, '2019-09-06', 280.0)
INSERT INTO conference_days VALUES(45, '2019-09-20', 1000)
INSERT INTO workshops VALUES(110, 'Warsztaty z programowania równoległego', 'Brak opisu.', '12:10:00', '16:15:00', '607', 190, 75);
INSERT INTO workshops VALUES(110, 'Wykład z programowania w języku Java', 'Brak opisu.', '12:10:00', '14:35:00', '505', 140, 95);
INSERT INTO conference_days VALUES(45, '2019-09-21', 1000)
INSERT INTO workshops VALUES(111, 'Wykład z kryptografii', 'Brak opisu.', '16:20:00', '20:25:00', '517', 145, 40);
INSERT INTO workshops VALUES(111, 'Wykład z algorytmów grafowych', 'Brak opisu.', '12:10:00', '13:45:00', '22', 70, 95);
INSERT INTO workshops VALUES(111, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '12:10:00', '14:35:00', '721', 165, 90);
INSERT INTO workshops VALUES(111, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '10:30:00', '14:35:00', '626', 100, 40);
INSERT INTO conferences VALUES ('Powszechne konferencje programistyczne', 'Kraków', 'Dębowa', '30-055', '45', 0.5);
INSERT INTO conference_prices VALUES(46, '2019-10-02', 360)
INSERT INTO conference_prices VALUES(46, '2019-09-18', 288.0)
INSERT INTO conference_days VALUES(46, '2019-10-02', 1000)
INSERT INTO workshops VALUES(112, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '18:00:00', '19:35:00', '311', 135, 90);
INSERT INTO workshops VALUES(112, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '09:40:00', '12:05:00', '713', 150, 30);
INSERT INTO workshops VALUES(112, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '13:50:00', '17:55:00', '1200', 115, 45);
INSERT INTO workshops VALUES(112, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '12:10:00', '13:45:00', '928', 95, 30);
INSERT INTO workshops VALUES(112, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '11:20:00', '13:45:00', '816', 120, 90);
INSERT INTO conference_days VALUES(46, '2019-10-03', 1000)
INSERT INTO workshops VALUES(113, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '14:40:00', '18:45:00', '1012', 185, 25);
INSERT INTO workshops VALUES(113, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '08:00:00', '09:35:00', '628', 60, 75);
INSERT INTO workshops VALUES(113, 'Wykład z grafiki komputerowej', 'Brak opisu.', '18:00:00', '19:35:00', '1018', 145, 35);
INSERT INTO workshops VALUES(113, 'Wykład z uczenia maszynowego', 'Brak opisu.', '14:40:00', '17:05:00', '100', 195, 35);
INSERT INTO workshops VALUES(113, 'Wykład z programowania równoległego', 'Brak opisu.', '15:30:00', '18:45:00', '1229', 165, 90);
INSERT INTO conference_days VALUES(46, '2019-10-04', 1000)
INSERT INTO workshops VALUES(114, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '14:40:00', '17:55:00', '811', 120, 55);
INSERT INTO workshops VALUES(114, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '09:40:00', '12:55:00', '1029', 135, 40);
INSERT INTO workshops VALUES(114, 'Warsztaty z kryptografii', 'Brak opisu.', '14:40:00', '18:45:00', '1314', 70, 20);
INSERT INTO workshops VALUES(114, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '16:20:00', '18:45:00', '209', 155, 60);
INSERT INTO conference_days VALUES(46, '2019-10-05', 1000)
INSERT INTO workshops VALUES(115, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '13:50:00', '17:05:00', '119', 145, 10);
INSERT INTO workshops VALUES(115, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '15:30:00', '17:05:00', '920', 55, 40);
INSERT INTO workshops VALUES(115, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '11:20:00', '14:35:00', '716', 180, 75);
INSERT INTO workshops VALUES(115, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '10:30:00', '13:45:00', '309', 60, 40);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie kół naukowych', 'Rzeszów', 'Armii Krajowej', '35-030', '4', 0.2);
INSERT INTO conference_prices VALUES(47, '2019-10-17', 310)
INSERT INTO conference_prices VALUES(47, '2019-10-03', 248.0)
INSERT INTO conference_days VALUES(47, '2019-10-17', 1000)
INSERT INTO workshops VALUES(116, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '18:00:00', '19:35:00', '1315', 170, 80);
INSERT INTO workshops VALUES(116, 'Wykład z programowania w języku Java', 'Brak opisu.', '10:30:00', '14:35:00', '621', 195, 75);
INSERT INTO workshops VALUES(116, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '16:20:00', '20:25:00', '1004', 60, 50);
INSERT INTO workshops VALUES(116, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '13:00:00', '15:25:00', '928', 55, 10);
INSERT INTO conference_days VALUES(47, '2019-10-18', 1000)
INSERT INTO workshops VALUES(117, 'Wykład z kryptografii', 'Brak opisu.', '12:10:00', '15:25:00', '819', 135, 75);
INSERT INTO workshops VALUES(117, 'Wykład z teorii kompilacji', 'Brak opisu.', '09:40:00', '13:45:00', '1020', 105, 80);
INSERT INTO workshops VALUES(117, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '17:10:00', '19:35:00', '1228', 170, 45);
INSERT INTO conference_days VALUES(47, '2019-10-19', 1000)
INSERT INTO workshops VALUES(118, 'Warsztaty z programowania równoległego', 'Brak opisu.', '13:00:00', '16:15:00', '705', 190, 40);
INSERT INTO workshops VALUES(118, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '13:50:00', '16:15:00', '727', 170, 85);
INSERT INTO workshops VALUES(118, 'Warsztaty z architektur procesorów', 'Brak opisu.', '15:30:00', '17:55:00', '1225', 135, 20);
INSERT INTO workshops VALUES(118, 'Wykład z grafiki komputerowej', 'Brak opisu.', '13:50:00', '16:15:00', '413', 160, 35);
INSERT INTO workshops VALUES(118, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '11:20:00', '13:45:00', '312', 140, 10);
INSERT INTO workshops VALUES(118, 'Wykład z programowania w języku Python', 'Brak opisu.', '17:10:00', '18:45:00', '505', 120, 35);
INSERT INTO conferences VALUES ('Studencki festiwal programistyczne', 'Kraków', 'Dębowa', '30-055', '32', 0.7);
INSERT INTO conference_prices VALUES(48, '2019-11-08', 310)
INSERT INTO conference_prices VALUES(48, '2019-10-25', 248.0)
INSERT INTO conference_days VALUES(48, '2019-11-08', 1000)
INSERT INTO workshops VALUES(119, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '09:40:00', '11:15:00', '507', 90, 10);
INSERT INTO workshops VALUES(119, 'Wykład z programowania w języku C++', 'Brak opisu.', '08:00:00', '09:35:00', '1210', 75, 80);
INSERT INTO workshops VALUES(119, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '10:30:00', '13:45:00', '1009', 160, 60);
INSERT INTO workshops VALUES(119, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '08:50:00', '12:05:00', '1228', 160, 30);
INSERT INTO conference_days VALUES(48, '2019-11-09', 1000)
INSERT INTO workshops VALUES(120, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '13:00:00', '14:35:00', '801', 120, 60);
INSERT INTO workshops VALUES(120, 'Wykład z grafiki komputerowej', 'Brak opisu.', '13:00:00', '15:25:00', '1107', 115, 35);
INSERT INTO conferences VALUES ('Akademickie konferencje informatyczne', 'Wrocław', 'Mickiewicza', '52-119', '21', 0.7);
INSERT INTO conference_prices VALUES(49, '2019-11-15', 390)
INSERT INTO conference_prices VALUES(49, '2019-11-01', 312.0)
INSERT INTO conference_days VALUES(49, '2019-11-15', 1000)
INSERT INTO workshops VALUES(121, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '09:40:00', '11:15:00', '712', 105, 15);
INSERT INTO workshops VALUES(121, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '12:10:00', '15:25:00', '1204', 175, 50);
INSERT INTO workshops VALUES(121, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '12:10:00', '13:45:00', '25', 80, 60);
INSERT INTO conference_days VALUES(49, '2019-11-16', 1000)
INSERT INTO workshops VALUES(122, 'Wykład z systemów operacyjnych', 'Brak opisu.', '13:50:00', '16:15:00', '214', 115, 90);
INSERT INTO workshops VALUES(122, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '16:20:00', '18:45:00', '205', 50, 65);
INSERT INTO workshops VALUES(122, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '08:50:00', '12:55:00', '1223', 140, 75);
INSERT INTO conferences VALUES ('Studenckie warsztaty programistyczne', 'Poznań', 'Wojska Polskiego', '61-740', '2', 0.6);
INSERT INTO conference_prices VALUES(50, '2019-11-29', 430)
INSERT INTO conference_prices VALUES(50, '2019-11-15', 344.0)
INSERT INTO conference_days VALUES(50, '2019-11-29', 1000)
INSERT INTO workshops VALUES(123, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '11:20:00', '14:35:00', '1408', 120, 90);
INSERT INTO workshops VALUES(123, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '11:20:00', '14:35:00', '1014', 155, 90);
INSERT INTO workshops VALUES(123, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '14:40:00', '17:05:00', '803', 105, 25);
INSERT INTO workshops VALUES(123, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '08:50:00', '10:25:00', '926', 165, 90);
INSERT INTO workshops VALUES(123, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '17:10:00', '18:45:00', '211', 145, 25);
INSERT INTO workshops VALUES(123, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '17:10:00', '20:25:00', '1024', 105, 10);
INSERT INTO conference_days VALUES(50, '2019-11-30', 1000)
INSERT INTO workshops VALUES(124, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '10:30:00', '13:45:00', '1123', 50, 75);
INSERT INTO workshops VALUES(124, 'Wykład z architektur procesorów', 'Brak opisu.', '15:30:00', '19:35:00', '623', 170, 70);
INSERT INTO workshops VALUES(124, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '18:00:00', '20:25:00', '901', 65, 20);
INSERT INTO conferences VALUES ('Akademickie spotkanie miłośników programowania', 'Wrocław', 'Wojska Polskiego', '52-119', '43', 0.1);
INSERT INTO conference_prices VALUES(51, '2019-12-06', 270)
INSERT INTO conference_prices VALUES(51, '2019-11-22', 216.0)
INSERT INTO conference_days VALUES(51, '2019-12-06', 1000)
INSERT INTO workshops VALUES(125, 'Wykład z kryptografii', 'Brak opisu.', '11:20:00', '12:55:00', '729', 150, 15);
INSERT INTO workshops VALUES(125, 'Wykład z systemów operacyjnych', 'Brak opisu.', '15:30:00', '17:05:00', '129', 100, 55);
INSERT INTO workshops VALUES(125, 'Wykład z programowania równoległego', 'Brak opisu.', '16:20:00', '17:55:00', '205', 80, 85);
INSERT INTO workshops VALUES(125, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '11:20:00', '12:55:00', '312', 85, 65);
INSERT INTO conference_days VALUES(51, '2019-12-07', 1000)
INSERT INTO workshops VALUES(126, 'Wykład z programowania w języku Java', 'Brak opisu.', '11:20:00', '13:45:00', '508', 130, 15);
INSERT INTO workshops VALUES(126, 'Wykład z programowania obiektowego', 'Brak opisu.', '15:30:00', '17:55:00', '115', 130, 50);
INSERT INTO workshops VALUES(126, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '11:20:00', '12:55:00', '601', 140, 10);
INSERT INTO workshops VALUES(126, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '11:20:00', '12:55:00', '422', 140, 90);
INSERT INTO workshops VALUES(126, 'Wykład z programowania w języku Python', 'Brak opisu.', '13:50:00', '16:15:00', '1102', 175, 30);
INSERT INTO conferences VALUES ('Studenckie warsztaty miłośników programowania', 'Rzeszów', 'Krótka', '35-030', '23', 0.9);
INSERT INTO conference_prices VALUES(52, '2019-12-12', 290)
INSERT INTO conference_prices VALUES(52, '2019-11-28', 232.0)
INSERT INTO conference_days VALUES(52, '2019-12-12', 1000)
INSERT INTO workshops VALUES(127, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '13:50:00', '17:05:00', '928', 115, 30);
INSERT INTO workshops VALUES(127, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '13:00:00', '17:05:00', '225', 140, 10);
INSERT INTO workshops VALUES(127, 'Wykład z programowania w języku PHP', 'Brak opisu.', '09:40:00', '12:55:00', '1216', 125, 20);
INSERT INTO workshops VALUES(127, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '08:50:00', '10:25:00', '519', 145, 30);
INSERT INTO conference_days VALUES(52, '2019-12-13', 1000)
INSERT INTO workshops VALUES(128, 'Wykład z programowania w języku Python', 'Brak opisu.', '18:00:00', '20:25:00', '221', 85, 30);
INSERT INTO workshops VALUES(128, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '13:50:00', '16:15:00', '323', 90, 40);
INSERT INTO workshops VALUES(128, 'Warsztaty z kryptografii', 'Brak opisu.', '10:30:00', '14:35:00', '1003', 175, 95);
INSERT INTO conference_days VALUES(52, '2019-12-14', 1000)
INSERT INTO workshops VALUES(129, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '15:30:00', '17:55:00', '412', 60, 70);
INSERT INTO workshops VALUES(129, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '11:20:00', '14:35:00', '1012', 50, 50);
INSERT INTO workshops VALUES(129, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '08:50:00', '10:25:00', '226', 155, 50);
INSERT INTO workshops VALUES(129, 'Wykład z grafiki komputerowej', 'Brak opisu.', '16:20:00', '20:25:00', '523', 85, 45);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistyczne', 'Stalowa Wola', 'Dębowa', '37-450', '11', 0.85);
INSERT INTO conference_prices VALUES(53, '2020-01-10', 440)
INSERT INTO conference_prices VALUES(53, '2019-12-27', 352.0)
INSERT INTO conference_days VALUES(53, '2020-01-10', 1000)
INSERT INTO workshops VALUES(130, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '14:40:00', '17:55:00', '205', 55, 55);
INSERT INTO workshops VALUES(130, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '17:10:00', '20:25:00', '115', 165, 95);
INSERT INTO workshops VALUES(130, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '09:40:00', '11:15:00', '608', 160, 55);
INSERT INTO workshops VALUES(130, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '18:00:00', '20:25:00', '1401', 105, 35);
INSERT INTO conference_days VALUES(53, '2020-01-11', 1000)
INSERT INTO workshops VALUES(131, 'Wykład z grafiki komputerowej', 'Brak opisu.', '18:00:00', '20:25:00', '1003', 180, 95);
INSERT INTO workshops VALUES(131, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '13:00:00', '17:05:00', '201', 70, 50);
INSERT INTO workshops VALUES(131, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '14:40:00', '16:15:00', '805', 55, 60);
INSERT INTO workshops VALUES(131, 'Wykład z grafiki komputerowej', 'Brak opisu.', '09:40:00', '13:45:00', '415', 115, 45);
INSERT INTO conferences VALUES ('Powszechne konferencje informatyczne', 'Stalowa Wola', 'Królewska', '37-450', '6', 0.65);
INSERT INTO conference_prices VALUES(54, '2020-01-16', 330)
INSERT INTO conference_prices VALUES(54, '2020-01-02', 264.0)
INSERT INTO conference_days VALUES(54, '2020-01-16', 1000)
INSERT INTO workshops VALUES(132, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '13:50:00', '15:25:00', '812', 145, 10);
INSERT INTO workshops VALUES(132, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '08:00:00', '12:05:00', '107', 140, 20);
INSERT INTO workshops VALUES(132, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '13:00:00', '14:35:00', '617', 85, 25);
INSERT INTO conference_days VALUES(54, '2020-01-17', 1000)
INSERT INTO workshops VALUES(133, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '13:00:00', '15:25:00', '700', 165, 60);
INSERT INTO workshops VALUES(133, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '11:20:00', '15:25:00', '1000', 105, 55);
INSERT INTO workshops VALUES(133, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '08:00:00', '09:35:00', '18', 70, 75);
INSERT INTO conference_days VALUES(54, '2020-01-18', 1000)
INSERT INTO workshops VALUES(134, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '08:50:00', '11:15:00', '5', 185, 60);
INSERT INTO workshops VALUES(134, 'Warsztaty z kryptografii', 'Brak opisu.', '17:10:00', '20:25:00', '411', 175, 40);
INSERT INTO conferences VALUES ('Studencki festiwal informatyczne', 'Szczecin', 'Krótka', '71-627', '47', 0.45);
INSERT INTO conference_prices VALUES(55, '2020-01-24', 320)
INSERT INTO conference_prices VALUES(55, '2020-01-10', 256.0)
INSERT INTO conference_days VALUES(55, '2020-01-24', 1000)
INSERT INTO workshops VALUES(135, 'Wykład z kryptografii', 'Brak opisu.', '11:20:00', '12:55:00', '816', 95, 95);
INSERT INTO workshops VALUES(135, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '14:40:00', '17:55:00', '928', 160, 25);
INSERT INTO workshops VALUES(135, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '13:00:00', '14:35:00', '815', 185, 65);
INSERT INTO workshops VALUES(135, 'Wykład z programowania w języku Scala', 'Brak opisu.', '09:40:00', '12:05:00', '219', 120, 25);
INSERT INTO conference_days VALUES(55, '2020-01-25', 1000)
INSERT INTO workshops VALUES(136, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '15:30:00', '19:35:00', '417', 120, 15);
INSERT INTO workshops VALUES(136, 'Wykład z grafiki komputerowej', 'Brak opisu.', '12:10:00', '14:35:00', '1117', 50, 25);
INSERT INTO workshops VALUES(136, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '10:30:00', '12:55:00', '1204', 130, 15);
INSERT INTO workshops VALUES(136, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '08:50:00', '10:25:00', '118', 175, 20);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistyczne', 'Stalowa Wola', 'Długa', '37-450', '7', 0.55);
INSERT INTO conference_prices VALUES(56, '2020-02-28', 360)
INSERT INTO conference_prices VALUES(56, '2020-02-14', 288.0)
INSERT INTO conference_days VALUES(56, '2020-02-28', 1000)
INSERT INTO workshops VALUES(137, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '09:40:00', '12:55:00', '2', 180, 35);
INSERT INTO workshops VALUES(137, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '11:20:00', '13:45:00', '901', 55, 55);
INSERT INTO workshops VALUES(137, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '17:10:00', '19:35:00', '1129', 95, 20);
INSERT INTO workshops VALUES(137, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '08:50:00', '11:15:00', '1322', 55, 45);
INSERT INTO conference_days VALUES(56, '2020-02-29', 1000)
INSERT INTO workshops VALUES(138, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '15:30:00', '17:05:00', '1212', 60, 45);
INSERT INTO workshops VALUES(138, 'Warsztaty z kryptografii', 'Brak opisu.', '16:20:00', '20:25:00', '924', 155, 70);
INSERT INTO workshops VALUES(138, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '16:20:00', '18:45:00', '1019', 165, 60);
INSERT INTO workshops VALUES(138, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '08:50:00', '12:05:00', '1214', 95, 60);
INSERT INTO workshops VALUES(138, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '09:40:00', '12:05:00', '1109', 95, 65);
INSERT INTO conferences VALUES ('Powszechne konferencje programistów', 'Rzeszów', 'Dębowa', '35-030', '15', 0.1);
INSERT INTO conference_prices VALUES(57, '2020-03-12', 220)
INSERT INTO conference_prices VALUES(57, '2020-02-27', 176.0)
INSERT INTO conference_days VALUES(57, '2020-03-12', 1000)
INSERT INTO workshops VALUES(139, 'Wykład z teorii kompilacji', 'Brak opisu.', '13:00:00', '15:25:00', '705', 120, 45);
INSERT INTO workshops VALUES(139, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '08:00:00', '12:05:00', '514', 190, 60);
INSERT INTO workshops VALUES(139, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '10:30:00', '14:35:00', '309', 130, 75);
INSERT INTO workshops VALUES(139, 'Wykład z algorytmów grafowych', 'Brak opisu.', '10:30:00', '14:35:00', '417', 170, 45);
INSERT INTO conference_days VALUES(57, '2020-03-13', 1000)
INSERT INTO workshops VALUES(140, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '11:20:00', '13:45:00', '818', 50, 15);
INSERT INTO workshops VALUES(140, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '13:00:00', '16:15:00', '726', 120, 85);
INSERT INTO workshops VALUES(140, 'Wykład z programowania w języku Julia', 'Brak opisu.', '12:10:00', '16:15:00', '1403', 155, 60);
INSERT INTO workshops VALUES(140, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '13:00:00', '15:25:00', '826', 115, 55);
INSERT INTO workshops VALUES(140, 'Wykład z architektur procesorów', 'Brak opisu.', '13:00:00', '16:15:00', '621', 110, 60);
INSERT INTO conference_days VALUES(57, '2020-03-14', 1000)
INSERT INTO workshops VALUES(141, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '16:20:00', '19:35:00', '827', 95, 40);
INSERT INTO workshops VALUES(141, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '08:50:00', '12:55:00', '1200', 155, 30);
INSERT INTO workshops VALUES(141, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '15:30:00', '17:55:00', '11', 120, 85);
INSERT INTO workshops VALUES(141, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '13:50:00', '15:25:00', '426', 65, 15);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie miłośników programowania', 'Kraków', '3 Maja', '30-055', '17', 0.95);
INSERT INTO conference_prices VALUES(58, '2020-03-20', 460)
INSERT INTO conference_prices VALUES(58, '2020-03-06', 368.0)
INSERT INTO conference_days VALUES(58, '2020-03-20', 1000)
INSERT INTO workshops VALUES(142, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '16:20:00', '19:35:00', '626', 190, 35);
INSERT INTO workshops VALUES(142, 'Wykład z uczenia maszynowego', 'Brak opisu.', '12:10:00', '13:45:00', '1200', 190, 50);
INSERT INTO workshops VALUES(142, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '15:30:00', '18:45:00', '400', 85, 20);
INSERT INTO workshops VALUES(142, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '09:40:00', '11:15:00', '209', 65, 70);
INSERT INTO workshops VALUES(142, 'Wykład z architektur procesorów', 'Brak opisu.', '16:20:00', '19:35:00', '1121', 135, 10);
INSERT INTO workshops VALUES(142, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '14:40:00', '17:05:00', '424', 70, 35);
INSERT INTO conference_days VALUES(58, '2020-03-21', 1000)
INSERT INTO workshops VALUES(143, 'Wykład z algorytmów grafowych', 'Brak opisu.', '16:20:00', '19:35:00', '706', 175, 50);
INSERT INTO workshops VALUES(143, 'Wykład z systemów operacyjnych', 'Brak opisu.', '16:20:00', '19:35:00', '1326', 65, 45);
INSERT INTO workshops VALUES(143, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '09:40:00', '13:45:00', '424', 105, 25);
INSERT INTO conferences VALUES ('Międzyuczelniane forum informatyków', 'Warszawa', 'Wojska Polskiego', '02-495', '42', 0.15);
INSERT INTO conference_prices VALUES(59, '2020-04-17', 130)
INSERT INTO conference_prices VALUES(59, '2020-04-03', 104.0)
INSERT INTO conference_days VALUES(59, '2020-04-17', 1000)
INSERT INTO workshops VALUES(144, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '17:10:00', '20:25:00', '1109', 180, 75);
INSERT INTO workshops VALUES(144, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '18:00:00', '20:25:00', '402', 185, 15);
INSERT INTO workshops VALUES(144, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '08:00:00', '11:15:00', '701', 55, 35);
INSERT INTO workshops VALUES(144, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '13:00:00', '14:35:00', '1402', 195, 45);
INSERT INTO workshops VALUES(144, 'Wykład z programowania w języku Java', 'Brak opisu.', '13:00:00', '14:35:00', '118', 110, 20);
INSERT INTO conference_days VALUES(59, '2020-04-18', 1000)
INSERT INTO workshops VALUES(145, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '08:00:00', '11:15:00', '1313', 110, 85);
INSERT INTO workshops VALUES(145, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '13:00:00', '16:15:00', '1122', 190, 50);
INSERT INTO workshops VALUES(145, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '09:40:00', '13:45:00', '22', 105, 50);
INSERT INTO workshops VALUES(145, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '18:00:00', '20:25:00', '427', 135, 65);
INSERT INTO workshops VALUES(145, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '14:40:00', '18:45:00', '27', 125, 85);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie miłośników programowania', 'Kraków', 'Mickiewicza', '30-055', '14', 0.85);
INSERT INTO conference_prices VALUES(60, '2020-05-07', 230)
INSERT INTO conference_prices VALUES(60, '2020-04-23', 184.0)
INSERT INTO conference_days VALUES(60, '2020-05-07', 1000)
INSERT INTO workshops VALUES(146, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '15:30:00', '19:35:00', '800', 190, 45);
INSERT INTO workshops VALUES(146, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '15:30:00', '19:35:00', '1124', 110, 55);
INSERT INTO workshops VALUES(146, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '11:20:00', '12:55:00', '407', 160, 10);
INSERT INTO workshops VALUES(146, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '14:40:00', '16:15:00', '1005', 85, 50);
INSERT INTO workshops VALUES(146, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '12:10:00', '14:35:00', '809', 125, 10);
INSERT INTO conference_days VALUES(60, '2020-05-08', 1000)
INSERT INTO workshops VALUES(147, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '16:20:00', '18:45:00', '504', 140, 10);
INSERT INTO workshops VALUES(147, 'Wykład z kryptografii', 'Brak opisu.', '18:00:00', '19:35:00', '214', 170, 80);
INSERT INTO workshops VALUES(147, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '10:30:00', '14:35:00', '117', 175, 15);
INSERT INTO conference_days VALUES(60, '2020-05-09', 1000)
INSERT INTO workshops VALUES(148, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '15:30:00', '17:05:00', '508', 75, 75);
INSERT INTO workshops VALUES(148, 'Wykład z algorytmów grafowych', 'Brak opisu.', '16:20:00', '19:35:00', '316', 150, 85);
INSERT INTO workshops VALUES(148, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '09:40:00', '13:45:00', '311', 135, 60);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie kół naukowych', 'Kraków', 'Dębowa', '30-055', '8', 0.85);
INSERT INTO conference_prices VALUES(61, '2020-05-28', 380)
INSERT INTO conference_prices VALUES(61, '2020-05-14', 304.0)
INSERT INTO conference_days VALUES(61, '2020-05-28', 1000)
INSERT INTO workshops VALUES(149, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '08:00:00', '12:05:00', '1320', 65, 95);
INSERT INTO workshops VALUES(149, 'Wykład z architektur procesorów', 'Brak opisu.', '11:20:00', '14:35:00', '112', 110, 95);
INSERT INTO workshops VALUES(149, 'Warsztaty z programowania równoległego', 'Brak opisu.', '11:20:00', '14:35:00', '1222', 65, 30);
INSERT INTO workshops VALUES(149, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '15:30:00', '19:35:00', '1000', 100, 75);
INSERT INTO conference_days VALUES(61, '2020-05-29', 1000)
INSERT INTO workshops VALUES(150, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '16:20:00', '20:25:00', '811', 160, 30);
INSERT INTO workshops VALUES(150, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '08:50:00', '12:05:00', '100', 75, 65);
INSERT INTO workshops VALUES(150, 'Wykład z algorytmów grafowych', 'Brak opisu.', '08:50:00', '10:25:00', '1122', 60, 10);
INSERT INTO workshops VALUES(150, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '15:30:00', '17:05:00', '502', 160, 45);
INSERT INTO conference_days VALUES(61, '2020-05-30', 1000)
INSERT INTO workshops VALUES(151, 'Wykład z programowania w języku Scala', 'Brak opisu.', '16:20:00', '19:35:00', '1', 90, 50);
INSERT INTO workshops VALUES(151, 'Wykład z algorytmów grafowych', 'Brak opisu.', '18:00:00', '20:25:00', '122', 115, 95);
INSERT INTO workshops VALUES(151, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '11:20:00', '12:55:00', '1108', 190, 75);
INSERT INTO workshops VALUES(151, 'Wykład z programowania obiektowego', 'Brak opisu.', '18:00:00', '19:35:00', '306', 110, 35);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie informatyczne', 'Lublin', 'Królewska', '20-410', '46', 0.85);
INSERT INTO conference_prices VALUES(62, '2020-06-05', 200)
INSERT INTO conference_prices VALUES(62, '2020-05-22', 160.0)
INSERT INTO conference_days VALUES(62, '2020-06-05', 1000)
INSERT INTO workshops VALUES(152, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '13:50:00', '15:25:00', '911', 85, 25);
INSERT INTO workshops VALUES(152, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '15:30:00', '18:45:00', '402', 60, 20);
INSERT INTO workshops VALUES(152, 'Wykład z kryptografii', 'Brak opisu.', '11:20:00', '12:55:00', '1217', 100, 55);
INSERT INTO workshops VALUES(152, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '18:00:00', '20:25:00', '1416', 180, 85);
INSERT INTO conference_days VALUES(62, '2020-06-06', 1000)
INSERT INTO workshops VALUES(153, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '15:30:00', '18:45:00', '807', 130, 80);
INSERT INTO workshops VALUES(153, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '16:20:00', '20:25:00', '226', 170, 55);
INSERT INTO workshops VALUES(153, 'Wykład z kryptografii', 'Brak opisu.', '13:50:00', '16:15:00', '1011', 60, 10);
INSERT INTO workshops VALUES(153, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '08:50:00', '11:15:00', '202', 165, 65);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistyczne', 'Kielce', 'Mickiewicza', '25-511', '22', 0.05);
INSERT INTO conference_prices VALUES(63, '2020-06-12', 450)
INSERT INTO conference_prices VALUES(63, '2020-05-29', 360.0)
INSERT INTO conference_days VALUES(63, '2020-06-12', 1000)
INSERT INTO workshops VALUES(154, 'Wykład z grafiki komputerowej', 'Brak opisu.', '13:50:00', '15:25:00', '222', 160, 75);
INSERT INTO workshops VALUES(154, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '09:40:00', '13:45:00', '12', 170, 30);
INSERT INTO workshops VALUES(154, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '08:00:00', '09:35:00', '422', 100, 55);
INSERT INTO conference_days VALUES(63, '2020-06-13', 1000)
INSERT INTO workshops VALUES(155, 'Wykład z teorii kompilacji', 'Brak opisu.', '15:30:00', '17:55:00', '610', 195, 70);
INSERT INTO workshops VALUES(155, 'Wykład z kryptografii', 'Brak opisu.', '17:10:00', '19:35:00', '1229', 120, 95);
INSERT INTO workshops VALUES(155, 'Wykład z sieci neuronowych', 'Brak opisu.', '16:20:00', '17:55:00', '704', 65, 25);
INSERT INTO conferences VALUES ('Ademickie zebranie informatyczne', 'Lublin', 'Mickiewicza', '20-410', '9', 0.5);
INSERT INTO conference_prices VALUES(64, '2020-06-26', 390)
INSERT INTO conference_prices VALUES(64, '2020-06-12', 312.0)
INSERT INTO conference_days VALUES(64, '2020-06-26', 1000)
INSERT INTO workshops VALUES(156, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '10:30:00', '13:45:00', '23', 165, 90);
INSERT INTO workshops VALUES(156, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '08:50:00', '12:05:00', '821', 195, 45);
INSERT INTO workshops VALUES(156, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '13:00:00', '15:25:00', '20', 100, 50);
INSERT INTO workshops VALUES(156, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '11:20:00', '14:35:00', '1113', 65, 45);
INSERT INTO workshops VALUES(156, 'Warsztaty z kryptografii', 'Brak opisu.', '09:40:00', '12:05:00', '920', 110, 35);
INSERT INTO conference_days VALUES(64, '2020-06-27', 1000)
INSERT INTO workshops VALUES(157, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '13:50:00', '16:15:00', '809', 165, 60);
INSERT INTO workshops VALUES(157, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '11:20:00', '14:35:00', '812', 180, 55);
INSERT INTO workshops VALUES(157, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '11:20:00', '15:25:00', '1406', 130, 85);
INSERT INTO workshops VALUES(157, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '13:50:00', '15:25:00', '1426', 90, 70);
INSERT INTO workshops VALUES(157, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '09:40:00', '11:15:00', '803', 190, 75);
INSERT INTO conferences VALUES ('Studenckie warsztaty programistyczne', 'Kielce', 'Długa', '25-511', '40', 0.9);
INSERT INTO conference_prices VALUES(65, '2020-07-09', 110)
INSERT INTO conference_prices VALUES(65, '2020-06-25', 88.0)
INSERT INTO conference_days VALUES(65, '2020-07-09', 1000)
INSERT INTO workshops VALUES(158, 'Wykład z programowania w języku Julia', 'Brak opisu.', '15:30:00', '17:55:00', '425', 60, 15);
INSERT INTO workshops VALUES(158, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '13:50:00', '16:15:00', '700', 75, 25);
INSERT INTO workshops VALUES(158, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '12:10:00', '14:35:00', '518', 195, 30);
INSERT INTO workshops VALUES(158, 'Wykład z programowania w języku C++', 'Brak opisu.', '13:50:00', '15:25:00', '1328', 190, 10);
INSERT INTO conference_days VALUES(65, '2020-07-10', 1000)
INSERT INTO workshops VALUES(159, 'Wykład z architektur procesorów', 'Brak opisu.', '09:40:00', '12:05:00', '108', 175, 15);
INSERT INTO workshops VALUES(159, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '17:10:00', '18:45:00', '405', 115, 25);
INSERT INTO workshops VALUES(159, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '15:30:00', '17:55:00', '524', 60, 95);
INSERT INTO conference_days VALUES(65, '2020-07-11', 1000)
INSERT INTO workshops VALUES(160, 'Wykład z programowania w języku PHP', 'Brak opisu.', '09:40:00', '12:55:00', '718', 105, 55);
INSERT INTO workshops VALUES(160, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '18:00:00', '20:25:00', '220', 60, 90);
INSERT INTO workshops VALUES(160, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '18:00:00', '20:25:00', '1125', 195, 85);
INSERT INTO workshops VALUES(160, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '17:10:00', '19:35:00', '1302', 150, 15);
INSERT INTO workshops VALUES(160, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '14:40:00', '16:15:00', '1012', 110, 75);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie kół naukowych', 'Kielce', 'Krótka', '25-511', '27', 0.05);
INSERT INTO conference_prices VALUES(66, '2020-07-16', 400)
INSERT INTO conference_prices VALUES(66, '2020-07-02', 320.0)
INSERT INTO conference_days VALUES(66, '2020-07-16', 1000)
INSERT INTO workshops VALUES(161, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '08:50:00', '12:05:00', '225', 65, 15);
INSERT INTO workshops VALUES(161, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '15:30:00', '17:05:00', '323', 60, 95);
INSERT INTO workshops VALUES(161, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '08:00:00', '10:25:00', '615', 115, 65);
INSERT INTO workshops VALUES(161, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '15:30:00', '17:55:00', '411', 50, 20);
INSERT INTO conference_days VALUES(66, '2020-07-17', 1000)
INSERT INTO workshops VALUES(162, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '14:40:00', '18:45:00', '418', 140, 75);
INSERT INTO workshops VALUES(162, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '14:40:00', '17:05:00', '1402', 100, 90);
INSERT INTO workshops VALUES(162, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '17:10:00', '20:25:00', '18', 70, 45);
INSERT INTO conference_days VALUES(66, '2020-07-18', 1000)
INSERT INTO workshops VALUES(163, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '13:50:00', '17:05:00', '1312', 85, 55);
INSERT INTO workshops VALUES(163, 'Wykład z programowania w języku PHP', 'Brak opisu.', '13:50:00', '17:05:00', '1314', 50, 40);
INSERT INTO workshops VALUES(163, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '15:30:00', '18:45:00', '719', 105, 80);
INSERT INTO conferences VALUES ('Studenckie warsztaty miłośników programowania', 'Wrocław', 'Słowackiego', '52-119', '23', 0.4);
INSERT INTO conference_prices VALUES(67, '2020-07-24', 130)
INSERT INTO conference_prices VALUES(67, '2020-07-10', 104.0)
INSERT INTO conference_days VALUES(67, '2020-07-24', 1000)
INSERT INTO workshops VALUES(164, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '17:10:00', '18:45:00', '612', 80, 65);
INSERT INTO workshops VALUES(164, 'Wykład z teorii kompilacji', 'Brak opisu.', '08:00:00', '09:35:00', '908', 185, 80);
INSERT INTO workshops VALUES(164, 'Wykład z programowania w języku Julia', 'Brak opisu.', '13:00:00', '14:35:00', '600', 100, 85);
INSERT INTO conference_days VALUES(67, '2020-07-25', 1000)
INSERT INTO workshops VALUES(165, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '15:30:00', '18:45:00', '901', 155, 45);
INSERT INTO workshops VALUES(165, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '18:00:00', '19:35:00', '510', 85, 20);
INSERT INTO workshops VALUES(165, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '08:00:00', '10:25:00', '1425', 160, 60);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje miłośników programowania', 'Stalowa Wola', 'Mickiewicza', '37-450', '20', 0.3);
INSERT INTO conference_prices VALUES(68, '2020-08-07', 260)
INSERT INTO conference_prices VALUES(68, '2020-07-24', 208.0)
INSERT INTO conference_days VALUES(68, '2020-08-07', 1000)
INSERT INTO workshops VALUES(166, 'Wykład z kryptografii', 'Brak opisu.', '16:20:00', '18:45:00', '700', 125, 10);
INSERT INTO workshops VALUES(166, 'Wykład z programowania w języku Scala', 'Brak opisu.', '16:20:00', '18:45:00', '620', 75, 90);
INSERT INTO workshops VALUES(166, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '13:50:00', '17:55:00', '822', 85, 40);
INSERT INTO workshops VALUES(166, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '15:30:00', '19:35:00', '904', 50, 30);
INSERT INTO conference_days VALUES(68, '2020-08-08', 1000)
INSERT INTO workshops VALUES(167, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '13:00:00', '14:35:00', '1221', 55, 50);
INSERT INTO workshops VALUES(167, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '08:00:00', '09:35:00', '921', 55, 55);
INSERT INTO workshops VALUES(167, 'Warsztaty z architektur procesorów', 'Brak opisu.', '13:00:00', '16:15:00', '823', 175, 30);
INSERT INTO workshops VALUES(167, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '14:40:00', '16:15:00', '1306', 155, 60);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie programistów', 'Wrocław', 'Długa', '52-119', '16', 1.0);
INSERT INTO conference_prices VALUES(69, '2020-09-11', 260)
INSERT INTO conference_prices VALUES(69, '2020-08-28', 208.0)
INSERT INTO conference_days VALUES(69, '2020-09-11', 1000)
INSERT INTO workshops VALUES(168, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '08:00:00', '09:35:00', '200', 50, 90);
INSERT INTO workshops VALUES(168, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '08:50:00', '12:05:00', '700', 155, 70);
INSERT INTO workshops VALUES(168, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '09:40:00', '13:45:00', '7', 85, 80);
INSERT INTO workshops VALUES(168, 'Wykład z uczenia maszynowego', 'Brak opisu.', '12:10:00', '16:15:00', '521', 55, 65);
INSERT INTO workshops VALUES(168, 'Wykład z programowania w języku Rust', 'Brak opisu.', '18:00:00', '20:25:00', '805', 185, 80);
INSERT INTO conference_days VALUES(69, '2020-09-12', 1000)
INSERT INTO workshops VALUES(169, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '09:40:00', '12:05:00', '400', 130, 65);
INSERT INTO workshops VALUES(169, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '08:50:00', '11:15:00', '302', 130, 30);
INSERT INTO workshops VALUES(169, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '18:00:00', '20:25:00', '929', 175, 25);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje programistów', 'Wrocław', 'Dębowa', '52-119', '26', 0.6);
INSERT INTO conference_prices VALUES(70, '2020-10-02', 400)
INSERT INTO conference_prices VALUES(70, '2020-09-18', 320.0)
INSERT INTO conference_days VALUES(70, '2020-10-02', 1000)
INSERT INTO workshops VALUES(170, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '09:40:00', '11:15:00', '1', 120, 60);
INSERT INTO workshops VALUES(170, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '16:20:00', '20:25:00', '415', 65, 10);
INSERT INTO workshops VALUES(170, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '14:40:00', '18:45:00', '1309', 60, 20);
INSERT INTO workshops VALUES(170, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '17:10:00', '19:35:00', '303', 160, 35);
INSERT INTO conference_days VALUES(70, '2020-10-03', 1000)
INSERT INTO workshops VALUES(171, 'Wykład z programowania obiektowego', 'Brak opisu.', '16:20:00', '17:55:00', '1112', 185, 55);
INSERT INTO workshops VALUES(171, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '16:20:00', '17:55:00', '1421', 145, 55);
INSERT INTO workshops VALUES(171, 'Warsztaty z kryptografii', 'Brak opisu.', '08:00:00', '11:15:00', '901', 150, 10);
INSERT INTO conferences VALUES ('Międzyuczelniane forum programistów', 'Lublin', 'Słowackiego', '20-410', '47', 0.0);
INSERT INTO conference_prices VALUES(71, '2020-10-16', 490)
INSERT INTO conference_prices VALUES(71, '2020-10-02', 392.0)
INSERT INTO conference_days VALUES(71, '2020-10-16', 1000)
INSERT INTO workshops VALUES(172, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '14:40:00', '17:55:00', '1317', 75, 10);
INSERT INTO workshops VALUES(172, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '16:20:00', '17:55:00', '118', 55, 80);
INSERT INTO workshops VALUES(172, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '16:20:00', '17:55:00', '627', 120, 80);
INSERT INTO workshops VALUES(172, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '17:10:00', '18:45:00', '211', 150, 70);
INSERT INTO conference_days VALUES(71, '2020-10-17', 1000)
INSERT INTO workshops VALUES(173, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '15:30:00', '17:55:00', '821', 50, 40);
INSERT INTO workshops VALUES(173, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '09:40:00', '12:05:00', '422', 90, 25);
INSERT INTO workshops VALUES(173, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '15:30:00', '17:55:00', '1126', 135, 25);
INSERT INTO workshops VALUES(173, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '12:10:00', '16:15:00', '620', 150, 30);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistyczne', 'Warszawa', 'Królewska', '02-495', '29', 0.0);
INSERT INTO conference_prices VALUES(72, '2020-11-06', 410)
INSERT INTO conference_prices VALUES(72, '2020-10-23', 328.0)
INSERT INTO conference_days VALUES(72, '2020-11-06', 1000)
INSERT INTO workshops VALUES(174, 'Wykład z kryptografii', 'Brak opisu.', '12:10:00', '15:25:00', '320', 90, 40);
INSERT INTO workshops VALUES(174, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '18:00:00', '19:35:00', '905', 80, 50);
INSERT INTO workshops VALUES(174, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '17:10:00', '20:25:00', '122', 130, 50);
INSERT INTO workshops VALUES(174, 'Wykład z systemów ekspertowych', 'Brak opisu.', '10:30:00', '12:55:00', '17', 105, 65);
INSERT INTO conference_days VALUES(72, '2020-11-07', 1000)
INSERT INTO workshops VALUES(175, 'Wykład z architektur procesorów', 'Brak opisu.', '13:00:00', '14:35:00', '15', 140, 70);
INSERT INTO workshops VALUES(175, 'Wykład z programowania w języku Python', 'Brak opisu.', '11:20:00', '15:25:00', '910', 100, 40);
INSERT INTO workshops VALUES(175, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '09:40:00', '12:05:00', '516', 145, 45);
INSERT INTO workshops VALUES(175, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '10:30:00', '13:45:00', '1118', 60, 60);
INSERT INTO workshops VALUES(175, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '16:20:00', '20:25:00', '223', 165, 95);
INSERT INTO workshops VALUES(175, 'Wykład z systemów operacyjnych', 'Brak opisu.', '08:50:00', '12:55:00', '912', 170, 70);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje programistów', 'Kielce', 'Wojska Polskiego', '25-511', '46', 0.0);
INSERT INTO conference_prices VALUES(73, '2020-11-19', 220)
INSERT INTO conference_prices VALUES(73, '2020-11-05', 176.0)
INSERT INTO conference_days VALUES(73, '2020-11-19', 1000)
INSERT INTO workshops VALUES(176, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '13:50:00', '16:15:00', '329', 80, 75);
INSERT INTO workshops VALUES(176, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '14:40:00', '18:45:00', '2', 65, 90);
INSERT INTO workshops VALUES(176, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '11:20:00', '14:35:00', '12', 135, 20);
INSERT INTO conference_days VALUES(73, '2020-11-20', 1000)
INSERT INTO workshops VALUES(177, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '09:40:00', '12:05:00', '615', 115, 25);
INSERT INTO workshops VALUES(177, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '08:00:00', '09:35:00', '1301', 90, 30);
INSERT INTO conference_days VALUES(73, '2020-11-21', 1000)
INSERT INTO workshops VALUES(178, 'Wykład z architektur procesorów', 'Brak opisu.', '15:30:00', '18:45:00', '407', 155, 95);
INSERT INTO workshops VALUES(178, 'Warsztaty z kryptografii', 'Brak opisu.', '09:40:00', '12:55:00', '617', 135, 60);
INSERT INTO workshops VALUES(178, 'Warsztaty z architektur procesorów', 'Brak opisu.', '10:30:00', '12:05:00', '1403', 160, 10);
INSERT INTO workshops VALUES(178, 'Wykład z programowania w języku Rust', 'Brak opisu.', '11:20:00', '15:25:00', '303', 170, 25);
INSERT INTO workshops VALUES(178, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '13:50:00', '17:05:00', '0', 125, 80);
INSERT INTO workshops VALUES(178, 'Wykład z programowania w języku Scala', 'Brak opisu.', '09:40:00', '11:15:00', '723', 70, 40);
INSERT INTO conferences VALUES ('Ademickie zebranie miłośników programowania', 'Poznań', 'Lipowa', '61-740', '6', 0.0);
INSERT INTO conference_prices VALUES(74, '2020-12-03', 150)
INSERT INTO conference_prices VALUES(74, '2020-11-19', 120.0)
INSERT INTO conference_days VALUES(74, '2020-12-03', 1000)
INSERT INTO workshops VALUES(179, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '10:30:00', '12:55:00', '429', 100, 90);
INSERT INTO workshops VALUES(179, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '17:10:00', '19:35:00', '700', 145, 50);
INSERT INTO conference_days VALUES(74, '2020-12-04', 1000)
INSERT INTO workshops VALUES(180, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '17:10:00', '20:25:00', '400', 130, 10);
INSERT INTO workshops VALUES(180, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '16:20:00', '17:55:00', '202', 150, 25);
INSERT INTO workshops VALUES(180, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '18:00:00', '20:25:00', '302', 125, 25);
INSERT INTO conference_days VALUES(74, '2020-12-05', 1000)
INSERT INTO workshops VALUES(181, 'Wykład z architektur procesorów', 'Brak opisu.', '12:10:00', '15:25:00', '900', 95, 20);
INSERT INTO workshops VALUES(181, 'Wykład z systemów ekspertowych', 'Brak opisu.', '09:40:00', '11:15:00', '1414', 150, 35);
INSERT INTO workshops VALUES(181, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '13:50:00', '17:55:00', '1012', 190, 30);

INSERT INTO people VALUES('Maja', 'Szewczyk', 'majaszewczyk6747@email.pl')
INSERT INTO people VALUES('Filip', 'Szewczyk', 'filipszewczyk511@email.pl')
INSERT INTO people VALUES('Wiktor', 'Pawlak', 'wiktorpawlak3074@email.pl')
INSERT INTO people VALUES('Julia', 'Michalak', 'juliamichalak4270@email.pl')
INSERT INTO people VALUES('Alicja', 'Szewczyk', 'alicjaszewczyk1736@email.pl')
INSERT INTO people VALUES('Kacper', 'Wróbel', 'kacperwróbel976@email.pl')
INSERT INTO people VALUES('Zofia', 'Wójcik', 'zofiawójcik278@email.pl')
INSERT INTO people VALUES('Jan', 'Woźniak', 'janwoźniak9222@email.pl')
INSERT INTO people VALUES('Marcel', 'Król', 'marcelkról1428@email.pl')
INSERT INTO people VALUES('Bartosz', 'Wieczorek', 'bartoszwieczorek8474@email.pl')
INSERT INTO people VALUES('Igor', 'Baran', 'igorbaran6120@email.pl')
INSERT INTO people VALUES('Wiktor', 'Duda', 'wiktorduda4735@email.pl')
INSERT INTO people VALUES('Aleksander', 'Duda', 'aleksanderduda7396@email.pl')
INSERT INTO people VALUES('Alan', 'Stępień', 'alanstępień6389@email.pl')
INSERT INTO people VALUES('Alan', 'Nowak', 'alannowak1596@email.pl')
INSERT INTO people VALUES('Piotr', 'Krawczk', 'piotrkrawczk6906@email.pl')
INSERT INTO people VALUES('Adam', 'Szewczyk', 'adamszewczyk8827@email.pl')
INSERT INTO people VALUES('Jan', 'Kaczmarek', 'jankaczmarek6426@email.pl')
INSERT INTO people VALUES('Wiktor', 'Duda', 'wiktorduda9221@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Dudek', 'wiktoriadudek2176@email.pl')
INSERT INTO people VALUES('Michał', 'Stępień', 'michałstępień5051@email.pl')
INSERT INTO people VALUES('Wiktor', 'Baran', 'wiktorbaran6653@email.pl')
INSERT INTO people VALUES('Jan', 'Wieczorek', 'janwieczorek2307@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Michalak', 'aleksandramichalak8986@email.pl')
INSERT INTO people VALUES('Anna', 'Duda', 'annaduda671@email.pl')
INSERT INTO people VALUES('Wojciech', 'Krawczk', 'wojciechkrawczk9762@email.pl')
INSERT INTO people VALUES('Oliwia', 'Zając', 'oliwiazając6949@email.pl')
INSERT INTO people VALUES('Alicja', 'Kowalczyk', 'alicjakowalczyk7276@email.pl')
INSERT INTO people VALUES('Gabriela', 'Adamczyk', 'gabrielaadamczyk9541@email.pl')
INSERT INTO people VALUES('Szymon', 'Mazur', 'szymonmazur9671@email.pl')
INSERT INTO people VALUES('Nikola', 'Michalak', 'nikolamichalak1952@email.pl')
INSERT INTO people VALUES('Filip', 'Wróbel', 'filipwróbel6927@email.pl')
INSERT INTO people VALUES('Nadia', 'Krawczk', 'nadiakrawczk9867@email.pl')
INSERT INTO people VALUES('Alan', 'Nowak', 'alannowak3225@email.pl')
INSERT INTO people VALUES('Nadia', 'Szewczyk', 'nadiaszewczyk5939@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Król', 'zuzannakról4692@email.pl')
INSERT INTO people VALUES('Emilia', 'Stępień', 'emiliastępień9174@email.pl')
INSERT INTO people VALUES('Maja', 'Zając', 'majazając553@email.pl')
INSERT INTO people VALUES('Natalia', 'Pawlak', 'nataliapawlak403@email.pl')
INSERT INTO people VALUES('Zofia', 'Szewczyk', 'zofiaszewczyk7411@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Baran', 'wiktoriabaran7068@email.pl')
INSERT INTO people VALUES('Hanna', 'Michalak', 'hannamichalak4888@email.pl')
INSERT INTO people VALUES('Antoni', 'Szewczyk', 'antoniszewczyk4322@email.pl')
INSERT INTO people VALUES('Filip', 'Mazur', 'filipmazur5453@email.pl')
INSERT INTO people VALUES('Igor', 'Wójcik', 'igorwójcik8413@email.pl')
INSERT INTO people VALUES('Zofia', 'Pawlak', 'zofiapawlak6913@email.pl')
INSERT INTO people VALUES('Igor', 'Nowak', 'igornowak1964@email.pl')
INSERT INTO people VALUES('Gabriela', 'Kowalczyk', 'gabrielakowalczyk1536@email.pl')
INSERT INTO people VALUES('Maria', 'Sikora', 'mariasikora1089@email.pl')
INSERT INTO people VALUES('Franciszek', 'Walczak', 'franciszekwalczak3479@email.pl')
INSERT INTO people VALUES('Wojciech', 'Mazur', 'wojciechmazur990@email.pl')
INSERT INTO people VALUES('Jan', 'Wieczorek', 'janwieczorek8877@email.pl')
INSERT INTO people VALUES('Martyna', 'Wieczorek', 'martynawieczorek6541@email.pl')
INSERT INTO people VALUES('Natalia', 'Król', 'nataliakról5464@email.pl')
INSERT INTO people VALUES('Alan', 'Szewczyk', 'alanszewczyk6244@email.pl')
INSERT INTO people VALUES('Michał', 'Pawlak', 'michałpawlak5707@email.pl')
INSERT INTO people VALUES('Hanna', 'Nowak', 'hannanowak8126@email.pl')
INSERT INTO people VALUES('Alicja', 'Kowalczyk', 'alicjakowalczyk1918@email.pl')
INSERT INTO people VALUES('Szymon', 'Zając', 'szymonzając6760@email.pl')
INSERT INTO people VALUES('Alan', 'Stępień', 'alanstępień1529@email.pl')
INSERT INTO people VALUES('Antoni', 'Dudek', 'antonidudek1159@email.pl')
INSERT INTO people VALUES('Bartosz', 'Mazur', 'bartoszmazur8365@email.pl')
INSERT INTO people VALUES('Antonina', 'Stępień', 'antoninastępień428@email.pl')
INSERT INTO people VALUES('Wojciech', 'Nowak', 'wojciechnowak1923@email.pl')
INSERT INTO people VALUES('Mateusz', 'Krawczk', 'mateuszkrawczk5908@email.pl')
INSERT INTO people VALUES('Franciszek', 'Pawlak', 'franciszekpawlak4780@email.pl')
INSERT INTO people VALUES('Hanna', 'Szewczyk', 'hannaszewczyk5576@email.pl')
INSERT INTO people VALUES('Filip', 'Mazur', 'filipmazur5297@email.pl')
INSERT INTO people VALUES('Alan', 'Wróbel', 'alanwróbel4383@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Mazur', 'aleksandramazur7718@email.pl')
INSERT INTO people VALUES('Maria', 'Wróbel', 'mariawróbel260@email.pl')
INSERT INTO people VALUES('Natalia', 'Kaczmarek', 'nataliakaczmarek1172@email.pl')
INSERT INTO people VALUES('Piotr', 'Król', 'piotrkról3439@email.pl')
INSERT INTO people VALUES('Nikola', 'Woźniak', 'nikolawoźniak1390@email.pl')
INSERT INTO people VALUES('Marcel', 'Mazur', 'marcelmazur9258@email.pl')
INSERT INTO people VALUES('Alicja', 'Dudek', 'alicjadudek8269@email.pl')
INSERT INTO people VALUES('Jakub', 'Baran', 'jakubbaran4353@email.pl')
INSERT INTO people VALUES('Bartosz', 'Zając', 'bartoszzając3692@email.pl')
INSERT INTO people VALUES('Michał', 'Walczak', 'michałwalczak1468@email.pl')
INSERT INTO people VALUES('Jakub', 'Stępień', 'jakubstępień5298@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Adamczyk', 'aleksandraadamczyk7292@email.pl')
INSERT INTO people VALUES('Jan', 'Zając', 'janzając3392@email.pl')
INSERT INTO people VALUES('Wiktor', 'Michalak', 'wiktormichalak7518@email.pl')
INSERT INTO people VALUES('Emilia', 'Mazur', 'emiliamazur3912@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Duda', 'wiktoriaduda8277@email.pl')
INSERT INTO people VALUES('Wojciech', 'Stępień', 'wojciechstępień3815@email.pl')
INSERT INTO people VALUES('Jakub', 'Nowak', 'jakubnowak4121@email.pl')
INSERT INTO people VALUES('Adam', 'Krawczk', 'adamkrawczk9553@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Mazur', 'aleksandramazur3975@email.pl')
INSERT INTO people VALUES('Maja', 'Sikora', 'majasikora4617@email.pl')
INSERT INTO people VALUES('Adam', 'Wróbel', 'adamwróbel1483@email.pl')
INSERT INTO people VALUES('Jakub', 'Mazur', 'jakubmazur1464@email.pl')
INSERT INTO people VALUES('Amelia', 'Wójcik', 'ameliawójcik1334@email.pl')
INSERT INTO people VALUES('Igor', 'Krawczk', 'igorkrawczk2128@email.pl')
INSERT INTO people VALUES('Lena', 'Kaczmarek', 'lenakaczmarek670@email.pl')
INSERT INTO people VALUES('Emilia', 'Baran', 'emiliabaran6830@email.pl')
INSERT INTO people VALUES('Oliwia', 'Adamczyk', 'oliwiaadamczyk4465@email.pl')
INSERT INTO people VALUES('Jakub', 'Kowalczyk', 'jakubkowalczyk4874@email.pl')
INSERT INTO people VALUES('Michał', 'Kaczmarek', 'michałkaczmarek8767@email.pl')
INSERT INTO people VALUES('Wiktor', 'Wróbel', 'wiktorwróbel2607@email.pl')
INSERT INTO people VALUES('Anna', 'Baran', 'annabaran8500@email.pl')
INSERT INTO people VALUES('Gabriela', 'Woźniak', 'gabrielawoźniak5445@email.pl')
INSERT INTO people VALUES('Nikola', 'Nowak', 'nikolanowak5109@email.pl')
INSERT INTO people VALUES('Franciszek', 'Stępień', 'franciszekstępień1759@email.pl')
INSERT INTO people VALUES('Michał', 'Kaczmarek', 'michałkaczmarek8717@email.pl')
INSERT INTO people VALUES('Amelia', 'Szewczyk', 'ameliaszewczyk8295@email.pl')
INSERT INTO people VALUES('Filip', 'Duda', 'filipduda890@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Mazur', 'aleksandramazur9820@email.pl')
INSERT INTO people VALUES('Julia', 'Król', 'juliakról8971@email.pl')
INSERT INTO people VALUES('Nadia', 'Michalak', 'nadiamichalak8948@email.pl')
INSERT INTO people VALUES('Gabriela', 'Kowalczyk', 'gabrielakowalczyk383@email.pl')
INSERT INTO people VALUES('Natalia', 'Dudek', 'nataliadudek4994@email.pl')
INSERT INTO people VALUES('Jakub', 'Sikora', 'jakubsikora1274@email.pl')
INSERT INTO people VALUES('Nikola', 'Adamczyk', 'nikolaadamczyk2850@email.pl')
INSERT INTO people VALUES('Maria', 'Baran', 'mariabaran2569@email.pl')
INSERT INTO people VALUES('Emilia', 'Sikora', 'emiliasikora9555@email.pl')
INSERT INTO people VALUES('Aleksander', 'Woźniak', 'aleksanderwoźniak8092@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Wójcik', 'mikołajwójcik9879@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Król', 'aleksandrakról2753@email.pl')
INSERT INTO people VALUES('Nadia', 'Wieczorek', 'nadiawieczorek160@email.pl')
INSERT INTO people VALUES('Maja', 'Wójcik', 'majawójcik4431@email.pl')
INSERT INTO people VALUES('Emilia', 'Duda', 'emiliaduda4053@email.pl')
INSERT INTO people VALUES('Alan', 'Woźniak', 'alanwoźniak1267@email.pl')
INSERT INTO people VALUES('Jan', 'Dudek', 'jandudek5684@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Kaczmarek', 'aleksandrakaczmarek6817@email.pl')
INSERT INTO people VALUES('Michał', 'Nowak', 'michałnowak8707@email.pl')
INSERT INTO people VALUES('Dawid', 'Mazur', 'dawidmazur4820@email.pl')
INSERT INTO people VALUES('Adam', 'Walczak', 'adamwalczak2438@email.pl')
INSERT INTO people VALUES('Lena', 'Wójcik', 'lenawójcik9944@email.pl')
INSERT INTO people VALUES('Michał', 'Krawczk', 'michałkrawczk9888@email.pl')
INSERT INTO people VALUES('Alicja', 'Nowak', 'alicjanowak6295@email.pl')
INSERT INTO people VALUES('Antonina', 'Sikora', 'antoninasikora5143@email.pl')
INSERT INTO people VALUES('Marcel', 'Kowalczyk', 'marcelkowalczyk9941@email.pl')
INSERT INTO people VALUES('Amelia', 'Wróbel', 'ameliawróbel5345@email.pl')
INSERT INTO people VALUES('Julia', 'Woźniak', 'juliawoźniak1005@email.pl')
INSERT INTO people VALUES('Oliwia', 'Król', 'oliwiakról7551@email.pl')
INSERT INTO people VALUES('Maria', 'Michalak', 'mariamichalak7459@email.pl')
INSERT INTO people VALUES('Nikola', 'Adamczyk', 'nikolaadamczyk9279@email.pl')
INSERT INTO people VALUES('Piotr', 'Zając', 'piotrzając1397@email.pl')
INSERT INTO people VALUES('Dawid', 'Baran', 'dawidbaran1445@email.pl')
INSERT INTO people VALUES('Filip', 'Wójcik', 'filipwójcik9571@email.pl')
INSERT INTO people VALUES('Alan', 'Michalak', 'alanmichalak3810@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Wróbel', 'aleksandrawróbel9891@email.pl')
INSERT INTO people VALUES('Adam', 'Zając', 'adamzając8997@email.pl')
INSERT INTO people VALUES('Martyna', 'Kowalczyk', 'martynakowalczyk2628@email.pl')
INSERT INTO people VALUES('Julia', 'Duda', 'juliaduda3085@email.pl')
INSERT INTO people VALUES('Szymon', 'Adamczyk', 'szymonadamczyk5026@email.pl')
INSERT INTO people VALUES('Szymon', 'Szewczyk', 'szymonszewczyk1801@email.pl')
INSERT INTO people VALUES('Hanna', 'Mazur', 'hannamazur9261@email.pl')
INSERT INTO people VALUES('Maria', 'Stępień', 'mariastępień4369@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Michalak', 'zuzannamichalak5574@email.pl')
INSERT INTO people VALUES('Kacper', 'Wieczorek', 'kacperwieczorek4599@email.pl')
INSERT INTO people VALUES('Maja', 'Król', 'majakról5046@email.pl')
INSERT INTO people VALUES('Alan', 'Zając', 'alanzając4264@email.pl')
INSERT INTO people VALUES('Szymon', 'Krawczk', 'szymonkrawczk2809@email.pl')
INSERT INTO people VALUES('Natalia', 'Pawlak', 'nataliapawlak3802@email.pl')
INSERT INTO people VALUES('Antoni', 'Mazur', 'antonimazur1539@email.pl')
INSERT INTO people VALUES('Maja', 'Nowak', 'majanowak4982@email.pl')
INSERT INTO people VALUES('Marcel', 'Pawlak', 'marcelpawlak5057@email.pl')
INSERT INTO people VALUES('Piotr', 'Woźniak', 'piotrwoźniak5683@email.pl')
INSERT INTO people VALUES('Dawid', 'Stępień', 'dawidstępień4819@email.pl')
INSERT INTO people VALUES('Martyna', 'Kowalczyk', 'martynakowalczyk9463@email.pl')
INSERT INTO people VALUES('Antonina', 'Sikora', 'antoninasikora3541@email.pl')
INSERT INTO people VALUES('Amelia', 'Wróbel', 'ameliawróbel8510@email.pl')
INSERT INTO people VALUES('Oliwia', 'Pawlak', 'oliwiapawlak3714@email.pl')
INSERT INTO people VALUES('Filip', 'Nowak', 'filipnowak4910@email.pl')
INSERT INTO people VALUES('Lena', 'Wieczorek', 'lenawieczorek6805@email.pl')
INSERT INTO people VALUES('Aleksander', 'Wójcik', 'aleksanderwójcik1219@email.pl')
INSERT INTO people VALUES('Natalia', 'Kaczmarek', 'nataliakaczmarek2560@email.pl')
INSERT INTO people VALUES('Gabriela', 'Adamczyk', 'gabrielaadamczyk166@email.pl')
INSERT INTO people VALUES('Bartosz', 'Kowalczyk', 'bartoszkowalczyk1723@email.pl')
INSERT INTO people VALUES('Maja', 'Walczak', 'majawalczak9932@email.pl')
INSERT INTO people VALUES('Dawid', 'Walczak', 'dawidwalczak6797@email.pl')
INSERT INTO people VALUES('Filip', 'Szewczyk', 'filipszewczyk834@email.pl')
INSERT INTO people VALUES('Mateusz', 'Mazur', 'mateuszmazur1535@email.pl')
INSERT INTO people VALUES('Hanna', 'Pawlak', 'hannapawlak7828@email.pl')
INSERT INTO people VALUES('Gabriela', 'Walczak', 'gabrielawalczak6169@email.pl')
INSERT INTO people VALUES('Maria', 'Sikora', 'mariasikora3342@email.pl')
INSERT INTO people VALUES('Zofia', 'Nowak', 'zofianowak1876@email.pl')
INSERT INTO people VALUES('Bartosz', 'Michalak', 'bartoszmichalak9632@email.pl')
INSERT INTO people VALUES('Antonina', 'Michalak', 'antoninamichalak7804@email.pl')
INSERT INTO people VALUES('Hanna', 'Wójcik', 'hannawójcik4595@email.pl')
INSERT INTO people VALUES('Igor', 'Dudek', 'igordudek8293@email.pl')
INSERT INTO people VALUES('Hanna', 'Wójcik', 'hannawójcik6835@email.pl')
INSERT INTO people VALUES('Franciszek', 'Baran', 'franciszekbaran1701@email.pl')
INSERT INTO people VALUES('Franciszek', 'Stępień', 'franciszekstępień523@email.pl')
INSERT INTO people VALUES('Mateusz', 'Wieczorek', 'mateuszwieczorek295@email.pl')
INSERT INTO people VALUES('Antoni', 'Walczak', 'antoniwalczak8958@email.pl')
INSERT INTO people VALUES('Bartosz', 'Wróbel', 'bartoszwróbel2260@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Pawlak', 'wiktoriapawlak8728@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Duda', 'wiktoriaduda334@email.pl')
INSERT INTO people VALUES('Hanna', 'Mazur', 'hannamazur4833@email.pl')
INSERT INTO people VALUES('Emilia', 'Baran', 'emiliabaran1082@email.pl')
INSERT INTO people VALUES('Wiktor', 'Pawlak', 'wiktorpawlak4328@email.pl')
INSERT INTO people VALUES('Jan', 'Mazur', 'janmazur3670@email.pl')
INSERT INTO people VALUES('Maria', 'Krawczk', 'mariakrawczk3586@email.pl')
INSERT INTO people VALUES('Oliwia', 'Dudek', 'oliwiadudek9679@email.pl')
INSERT INTO people VALUES('Antonina', 'Woźniak', 'antoninawoźniak7494@email.pl')
INSERT INTO people VALUES('Kacper', 'Krawczk', 'kacperkrawczk1320@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Wróbel', 'wiktoriawróbel1822@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Michalak', 'zuzannamichalak1379@email.pl')
INSERT INTO people VALUES('Franciszek', 'Stępień', 'franciszekstępień9001@email.pl')
INSERT INTO people VALUES('Maria', 'Wróbel', 'mariawróbel6549@email.pl')
INSERT INTO people VALUES('Antoni', 'Sikora', 'antonisikora993@email.pl')
INSERT INTO people VALUES('Igor', 'Mazur', 'igormazur5871@email.pl')
INSERT INTO people VALUES('Jakub', 'Szewczyk', 'jakubszewczyk9405@email.pl')
INSERT INTO people VALUES('Szymon', 'Kaczmarek', 'szymonkaczmarek441@email.pl')
INSERT INTO people VALUES('Zofia', 'Woźniak', 'zofiawoźniak4639@email.pl')
INSERT INTO people VALUES('Natalia', 'Kaczmarek', 'nataliakaczmarek3279@email.pl')
INSERT INTO people VALUES('Wojciech', 'Duda', 'wojciechduda8209@email.pl')
INSERT INTO people VALUES('Antonina', 'Krawczk', 'antoninakrawczk9256@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Zając', 'wiktoriazając19@email.pl')
INSERT INTO people VALUES('Michał', 'Wieczorek', 'michałwieczorek298@email.pl')
INSERT INTO people VALUES('Maja', 'Nowak', 'majanowak797@email.pl')
INSERT INTO people VALUES('Oliwia', 'Duda', 'oliwiaduda8790@email.pl')
INSERT INTO people VALUES('Adam', 'Dudek', 'adamdudek7804@email.pl')
INSERT INTO people VALUES('Gabriela', 'Nowak', 'gabrielanowak9886@email.pl')
INSERT INTO people VALUES('Piotr', 'Zając', 'piotrzając9687@email.pl')
INSERT INTO people VALUES('Michał', 'Wieczorek', 'michałwieczorek4406@email.pl')
INSERT INTO people VALUES('Alicja', 'Woźniak', 'alicjawoźniak9814@email.pl')
INSERT INTO people VALUES('Jakub', 'Duda', 'jakubduda5655@email.pl')
INSERT INTO people VALUES('Jan', 'Adamczyk', 'janadamczyk723@email.pl')
INSERT INTO people VALUES('Julia', 'Adamczyk', 'juliaadamczyk4943@email.pl')
INSERT INTO people VALUES('Mateusz', 'Wójcik', 'mateuszwójcik6476@email.pl')
INSERT INTO people VALUES('Kacper', 'Baran', 'kacperbaran2704@email.pl')
INSERT INTO people VALUES('Nadia', 'Stępień', 'nadiastępień2089@email.pl')
INSERT INTO people VALUES('Franciszek', 'Krawczk', 'franciszekkrawczk4469@email.pl')
INSERT INTO people VALUES('Gabriela', 'Wieczorek', 'gabrielawieczorek2345@email.pl')
INSERT INTO people VALUES('Alicja', 'Woźniak', 'alicjawoźniak6016@email.pl')
INSERT INTO people VALUES('Dawid', 'Wieczorek', 'dawidwieczorek6398@email.pl')
INSERT INTO people VALUES('Piotr', 'Krawczk', 'piotrkrawczk8994@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Stępień', 'aleksandrastępień4595@email.pl')
INSERT INTO people VALUES('Oliwia', 'Kowalczyk', 'oliwiakowalczyk8466@email.pl')
INSERT INTO people VALUES('Filip', 'Stępień', 'filipstępień5689@email.pl')
INSERT INTO people VALUES('Martyna', 'Kaczmarek', 'martynakaczmarek2892@email.pl')
INSERT INTO people VALUES('Kacper', 'Mazur', 'kacpermazur4709@email.pl')
INSERT INTO people VALUES('Adam', 'Baran', 'adambaran7319@email.pl')
INSERT INTO people VALUES('Michał', 'Kowalczyk', 'michałkowalczyk8541@email.pl')
INSERT INTO people VALUES('Nikola', 'Krawczk', 'nikolakrawczk8262@email.pl')
INSERT INTO people VALUES('Jan', 'Stępień', 'janstępień7956@email.pl')
INSERT INTO people VALUES('Aleksander', 'Woźniak', 'aleksanderwoźniak2421@email.pl')
INSERT INTO people VALUES('Igor', 'Wieczorek', 'igorwieczorek8962@email.pl')
INSERT INTO people VALUES('Mateusz', 'Wójcik', 'mateuszwójcik1300@email.pl')
INSERT INTO people VALUES('Emilia', 'Mazur', 'emiliamazur6195@email.pl')
INSERT INTO people VALUES('Alicja', 'Nowak', 'alicjanowak4701@email.pl')
INSERT INTO people VALUES('Julia', 'Duda', 'juliaduda8603@email.pl')
INSERT INTO people VALUES('Natalia', 'Mazur', 'nataliamazur5116@email.pl')
INSERT INTO people VALUES('Alicja', 'Stępień', 'alicjastępień2427@email.pl')
INSERT INTO people VALUES('Natalia', 'Wróbel', 'nataliawróbel1662@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Stępień', 'mikołajstępień8453@email.pl')
INSERT INTO people VALUES('Aleksander', 'Baran', 'aleksanderbaran6145@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Król', 'wiktoriakról2129@email.pl')
INSERT INTO people VALUES('Hanna', 'Zając', 'hannazając3565@email.pl')
INSERT INTO people VALUES('Maja', 'Wójcik', 'majawójcik1837@email.pl')
INSERT INTO people VALUES('Nadia', 'Stępień', 'nadiastępień2403@email.pl')
INSERT INTO people VALUES('Alicja', 'Król', 'alicjakról1576@email.pl')
INSERT INTO people VALUES('Natalia', 'Wieczorek', 'nataliawieczorek6067@email.pl')
INSERT INTO people VALUES('Igor', 'Duda', 'igorduda8570@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Michalak', 'aleksandramichalak8148@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Mazur', 'mikołajmazur2817@email.pl')
INSERT INTO people VALUES('Julia', 'Woźniak', 'juliawoźniak2668@email.pl')
INSERT INTO people VALUES('Kacper', 'Kowalczyk', 'kacperkowalczyk8078@email.pl')
INSERT INTO people VALUES('Alan', 'Wróbel', 'alanwróbel8765@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Duda', 'mikołajduda4369@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Szewczyk', 'mikołajszewczyk4279@email.pl')
INSERT INTO people VALUES('Bartosz', 'Adamczyk', 'bartoszadamczyk5910@email.pl')
INSERT INTO people VALUES('Nikola', 'Król', 'nikolakról7165@email.pl')
INSERT INTO people VALUES('Zofia', 'Baran', 'zofiabaran1388@email.pl')
INSERT INTO people VALUES('Piotr', 'Kaczmarek', 'piotrkaczmarek7317@email.pl')
INSERT INTO people VALUES('Maja', 'Duda', 'majaduda1912@email.pl')
INSERT INTO people VALUES('Julia', 'Szewczyk', 'juliaszewczyk9720@email.pl')
INSERT INTO people VALUES('Kacper', 'Dudek', 'kacperdudek9299@email.pl')
INSERT INTO people VALUES('Franciszek', 'Zając', 'franciszekzając1093@email.pl')
INSERT INTO people VALUES('Dawid', 'Michalak', 'dawidmichalak382@email.pl')
INSERT INTO people VALUES('Amelia', 'Michalak', 'ameliamichalak8714@email.pl')
INSERT INTO people VALUES('Emilia', 'Pawlak', 'emiliapawlak6502@email.pl')
INSERT INTO people VALUES('Emilia', 'Michalak', 'emiliamichalak6878@email.pl')
INSERT INTO people VALUES('Szymon', 'Wójcik', 'szymonwójcik8974@email.pl')
INSERT INTO people VALUES('Zofia', 'Król', 'zofiakról5607@email.pl')
INSERT INTO people VALUES('Martyna', 'Król', 'martynakról8160@email.pl')
INSERT INTO people VALUES('Jan', 'Sikora', 'jansikora6433@email.pl')
INSERT INTO people VALUES('Szymon', 'Kowalczyk', 'szymonkowalczyk3515@email.pl')
INSERT INTO people VALUES('Filip', 'Walczak', 'filipwalczak1424@email.pl')
INSERT INTO people VALUES('Maja', 'Zając', 'majazając9748@email.pl')
INSERT INTO people VALUES('Zofia', 'Adamczyk', 'zofiaadamczyk8780@email.pl')
INSERT INTO people VALUES('Wojciech', 'Król', 'wojciechkról6009@email.pl')
INSERT INTO people VALUES('Alan', 'Kowalczyk', 'alankowalczyk4783@email.pl')
INSERT INTO people VALUES('Nikola', 'Sikora', 'nikolasikora6818@email.pl')
INSERT INTO people VALUES('Julia', 'Sikora', 'juliasikora5258@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Nowak', 'wiktorianowak2048@email.pl')
INSERT INTO people VALUES('Kacper', 'Kowalczyk', 'kacperkowalczyk5142@email.pl')
INSERT INTO people VALUES('Anna', 'Michalak', 'annamichalak3888@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Krawczk', 'aleksandrakrawczk7088@email.pl')
INSERT INTO people VALUES('Oliwia', 'Szewczyk', 'oliwiaszewczyk7570@email.pl')
INSERT INTO people VALUES('Dawid', 'Szewczyk', 'dawidszewczyk7003@email.pl')
INSERT INTO people VALUES('Emilia', 'Nowak', 'emilianowak975@email.pl')
INSERT INTO people VALUES('Kacper', 'Wieczorek', 'kacperwieczorek2710@email.pl')
INSERT INTO people VALUES('Marcel', 'Wróbel', 'marcelwróbel9348@email.pl')
INSERT INTO people VALUES('Kacper', 'Kowalczyk', 'kacperkowalczyk9956@email.pl')
INSERT INTO people VALUES('Franciszek', 'Zając', 'franciszekzając7375@email.pl')
INSERT INTO people VALUES('Maria', 'Mazur', 'mariamazur3093@email.pl')
INSERT INTO people VALUES('Marcel', 'Wieczorek', 'marcelwieczorek170@email.pl')
INSERT INTO people VALUES('Antoni', 'Nowak', 'antoninowak5970@email.pl')
INSERT INTO people VALUES('Marcel', 'Michalak', 'marcelmichalak8056@email.pl')
INSERT INTO people VALUES('Jakub', 'Mazur', 'jakubmazur8014@email.pl')
INSERT INTO people VALUES('Filip', 'Krawczk', 'filipkrawczk8199@email.pl')
INSERT INTO people VALUES('Lena', 'Pawlak', 'lenapawlak5045@email.pl')
INSERT INTO people VALUES('Nikola', 'Michalak', 'nikolamichalak2539@email.pl')
INSERT INTO people VALUES('Kacper', 'Król', 'kacperkról1997@email.pl')
INSERT INTO people VALUES('Wiktor', 'Pawlak', 'wiktorpawlak2508@email.pl')
INSERT INTO people VALUES('Aleksander', 'Zając', 'aleksanderzając2908@email.pl')
INSERT INTO people VALUES('Amelia', 'Król', 'ameliakról7936@email.pl')
INSERT INTO people VALUES('Anna', 'Michalak', 'annamichalak2210@email.pl')
INSERT INTO people VALUES('Zofia', 'Baran', 'zofiabaran1401@email.pl')
INSERT INTO people VALUES('Amelia', 'Krawczk', 'ameliakrawczk7323@email.pl')
INSERT INTO people VALUES('Mateusz', 'Król', 'mateuszkról4941@email.pl')
INSERT INTO people VALUES('Michał', 'Dudek', 'michałdudek3157@email.pl')
INSERT INTO people VALUES('Aleksander', 'Krawczk', 'aleksanderkrawczk4498@email.pl')
INSERT INTO people VALUES('Marcel', 'Dudek', 'marceldudek201@email.pl')
INSERT INTO people VALUES('Nikola', 'Woźniak', 'nikolawoźniak1205@email.pl')
INSERT INTO people VALUES('Maja', 'Mazur', 'majamazur3498@email.pl')
INSERT INTO people VALUES('Mateusz', 'Wróbel', 'mateuszwróbel7748@email.pl')
INSERT INTO people VALUES('Igor', 'Mazur', 'igormazur839@email.pl')
INSERT INTO people VALUES('Emilia', 'Król', 'emiliakról5271@email.pl')
INSERT INTO people VALUES('Kacper', 'Duda', 'kacperduda721@email.pl')
INSERT INTO people VALUES('Antonina', 'Wieczorek', 'antoninawieczorek5987@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Król', 'wiktoriakról1771@email.pl')
INSERT INTO people VALUES('Jakub', 'Nowak', 'jakubnowak950@email.pl')
INSERT INTO people VALUES('Szymon', 'Kaczmarek', 'szymonkaczmarek9734@email.pl')
INSERT INTO people VALUES('Bartosz', 'Zając', 'bartoszzając176@email.pl')
INSERT INTO people VALUES('Filip', 'Kowalczyk', 'filipkowalczyk7749@email.pl')
INSERT INTO people VALUES('Gabriela', 'Wójcik', 'gabrielawójcik6328@email.pl')
INSERT INTO people VALUES('Lena', 'Zając', 'lenazając3626@email.pl')
INSERT INTO people VALUES('Antonina', 'Król', 'antoninakról2238@email.pl')
INSERT INTO people VALUES('Filip', 'Baran', 'filipbaran7107@email.pl')
INSERT INTO people VALUES('Nikola', 'Szewczyk', 'nikolaszewczyk491@email.pl')
INSERT INTO people VALUES('Alicja', 'Stępień', 'alicjastępień6672@email.pl')
INSERT INTO people VALUES('Martyna', 'Zając', 'martynazając853@email.pl')
INSERT INTO people VALUES('Franciszek', 'Nowak', 'franciszeknowak9354@email.pl')
INSERT INTO people VALUES('Amelia', 'Woźniak', 'ameliawoźniak1666@email.pl')
INSERT INTO people VALUES('Filip', 'Wróbel', 'filipwróbel5311@email.pl')
INSERT INTO people VALUES('Anna', 'Wróbel', 'annawróbel1207@email.pl')
INSERT INTO people VALUES('Wiktor', 'Wieczorek', 'wiktorwieczorek3174@email.pl')
INSERT INTO people VALUES('Zofia', 'Wójcik', 'zofiawójcik3653@email.pl')
INSERT INTO people VALUES('Amelia', 'Duda', 'ameliaduda5467@email.pl')
INSERT INTO people VALUES('Amelia', 'Wójcik', 'ameliawójcik5619@email.pl')
INSERT INTO people VALUES('Wojciech', 'Adamczyk', 'wojciechadamczyk9194@email.pl')
INSERT INTO people VALUES('Filip', 'Adamczyk', 'filipadamczyk5595@email.pl')
INSERT INTO people VALUES('Dawid', 'Król', 'dawidkról9519@email.pl')
INSERT INTO people VALUES('Wojciech', 'Szewczyk', 'wojciechszewczyk5106@email.pl')
INSERT INTO people VALUES('Antonina', 'Sikora', 'antoninasikora6672@email.pl')
INSERT INTO people VALUES('Szymon', 'Wróbel', 'szymonwróbel8017@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Wieczorek', 'wiktoriawieczorek9955@email.pl')
INSERT INTO people VALUES('Aleksander', 'Dudek', 'aleksanderdudek6214@email.pl')
INSERT INTO people VALUES('Dawid', 'Walczak', 'dawidwalczak1830@email.pl')
INSERT INTO people VALUES('Igor', 'Wieczorek', 'igorwieczorek5131@email.pl')
INSERT INTO people VALUES('Alan', 'Wieczorek', 'alanwieczorek75@email.pl')
INSERT INTO people VALUES('Igor', 'Zając', 'igorzając2719@email.pl')
INSERT INTO people VALUES('Nikola', 'Zając', 'nikolazając7396@email.pl')
INSERT INTO people VALUES('Lena', 'Wójcik', 'lenawójcik2332@email.pl')
INSERT INTO people VALUES('Marcel', 'Szewczyk', 'marcelszewczyk493@email.pl')
INSERT INTO people VALUES('Nikola', 'Baran', 'nikolabaran9981@email.pl')
INSERT INTO people VALUES('Dawid', 'Król', 'dawidkról6087@email.pl')
INSERT INTO people VALUES('Piotr', 'Kowalczyk', 'piotrkowalczyk8998@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Nowak', 'mikołajnowak6713@email.pl')
INSERT INTO people VALUES('Zofia', 'Krawczk', 'zofiakrawczk7747@email.pl')
INSERT INTO people VALUES('Maria', 'Kowalczyk', 'mariakowalczyk1445@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Kowalczyk', 'zuzannakowalczyk6588@email.pl')
INSERT INTO people VALUES('Maja', 'Dudek', 'majadudek8726@email.pl')
INSERT INTO people VALUES('Anna', 'Kowalczyk', 'annakowalczyk8358@email.pl')
INSERT INTO people VALUES('Wiktor', 'Krawczk', 'wiktorkrawczk3345@email.pl')
INSERT INTO people VALUES('Maria', 'Mazur', 'mariamazur5814@email.pl')
INSERT INTO people VALUES('Hanna', 'Nowak', 'hannanowak5848@email.pl')
INSERT INTO people VALUES('Oliwia', 'Baran', 'oliwiabaran3608@email.pl')
INSERT INTO people VALUES('Amelia', 'Stępień', 'ameliastępień853@email.pl')
INSERT INTO people VALUES('Bartosz', 'Szewczyk', 'bartoszszewczyk9687@email.pl')
INSERT INTO people VALUES('Piotr', 'Kowalczyk', 'piotrkowalczyk7032@email.pl')
INSERT INTO people VALUES('Michał', 'Kowalczyk', 'michałkowalczyk9711@email.pl')
INSERT INTO people VALUES('Maria', 'Duda', 'mariaduda2449@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Wróbel', 'mikołajwróbel5319@email.pl')
INSERT INTO people VALUES('Julia', 'Nowak', 'julianowak7290@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Pawlak', 'wiktoriapawlak8088@email.pl')
INSERT INTO people VALUES('Filip', 'Szewczyk', 'filipszewczyk3044@email.pl')
INSERT INTO people VALUES('Igor', 'Wieczorek', 'igorwieczorek275@email.pl')
INSERT INTO people VALUES('Zofia', 'Król', 'zofiakról6676@email.pl')
INSERT INTO people VALUES('Szymon', 'Michalak', 'szymonmichalak1884@email.pl')
INSERT INTO people VALUES('Dawid', 'Adamczyk', 'dawidadamczyk396@email.pl')
INSERT INTO people VALUES('Wiktor', 'Król', 'wiktorkról8562@email.pl')
INSERT INTO people VALUES('Amelia', 'Wieczorek', 'ameliawieczorek4264@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Michalak', 'mikołajmichalak730@email.pl')
INSERT INTO people VALUES('Nikola', 'Król', 'nikolakról3483@email.pl')
INSERT INTO people VALUES('Amelia', 'Krawczk', 'ameliakrawczk1469@email.pl')
INSERT INTO people VALUES('Szymon', 'Szewczyk', 'szymonszewczyk3786@email.pl')
INSERT INTO people VALUES('Jan', 'Duda', 'janduda4661@email.pl')
INSERT INTO people VALUES('Anna', 'Baran', 'annabaran4693@email.pl')
INSERT INTO people VALUES('Jakub', 'Adamczyk', 'jakubadamczyk9439@email.pl')
INSERT INTO people VALUES('Alicja', 'Szewczyk', 'alicjaszewczyk5597@email.pl')
INSERT INTO people VALUES('Natalia', 'Nowak', 'natalianowak1804@email.pl')
INSERT INTO people VALUES('Franciszek', 'Szewczyk', 'franciszekszewczyk1354@email.pl')
INSERT INTO people VALUES('Jan', 'Michalak', 'janmichalak612@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Wróbel', 'mikołajwróbel3242@email.pl')
INSERT INTO people VALUES('Piotr', 'Sikora', 'piotrsikora1339@email.pl')
INSERT INTO people VALUES('Adam', 'Wieczorek', 'adamwieczorek6752@email.pl')
INSERT INTO people VALUES('Nadia', 'Kowalczyk', 'nadiakowalczyk8322@email.pl')
INSERT INTO people VALUES('Dawid', 'Wójcik', 'dawidwójcik8137@email.pl')
INSERT INTO people VALUES('Kacper', 'Pawlak', 'kacperpawlak8363@email.pl')
INSERT INTO people VALUES('Anna', 'Wróbel', 'annawróbel777@email.pl')
INSERT INTO people VALUES('Kacper', 'Wróbel', 'kacperwróbel9023@email.pl')
INSERT INTO people VALUES('Piotr', 'Wieczorek', 'piotrwieczorek4017@email.pl')
INSERT INTO people VALUES('Oliwia', 'Zając', 'oliwiazając1170@email.pl')
INSERT INTO people VALUES('Bartosz', 'Dudek', 'bartoszdudek8591@email.pl')
INSERT INTO people VALUES('Marcel', 'Wieczorek', 'marcelwieczorek187@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Szewczyk', 'mikołajszewczyk9117@email.pl')
INSERT INTO people VALUES('Jakub', 'Krawczk', 'jakubkrawczk4527@email.pl')
INSERT INTO people VALUES('Gabriela', 'Baran', 'gabrielabaran8125@email.pl')
INSERT INTO people VALUES('Martyna', 'Zając', 'martynazając2628@email.pl')
INSERT INTO people VALUES('Marcel', 'Zając', 'marcelzając1949@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Zając', 'zuzannazając6320@email.pl')
INSERT INTO people VALUES('Martyna', 'Dudek', 'martynadudek3880@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Michalak', 'zuzannamichalak4844@email.pl')
INSERT INTO people VALUES('Oliwia', 'Wójcik', 'oliwiawójcik2998@email.pl')
INSERT INTO people VALUES('Mateusz', 'Wieczorek', 'mateuszwieczorek773@email.pl')
INSERT INTO people VALUES('Alicja', 'Baran', 'alicjabaran3328@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Duda', 'wiktoriaduda9747@email.pl')
INSERT INTO people VALUES('Oliwia', 'Krawczk', 'oliwiakrawczk9565@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Stępień', 'aleksandrastępień1274@email.pl')
INSERT INTO people VALUES('Amelia', 'Baran', 'ameliabaran4145@email.pl')
INSERT INTO people VALUES('Jan', 'Pawlak', 'janpawlak7385@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Wieczorek', 'wiktoriawieczorek6347@email.pl')
INSERT INTO people VALUES('Antonina', 'Kaczmarek', 'antoninakaczmarek7750@email.pl')
INSERT INTO people VALUES('Piotr', 'Wieczorek', 'piotrwieczorek4037@email.pl')
INSERT INTO people VALUES('Igor', 'Walczak', 'igorwalczak3676@email.pl')
INSERT INTO people VALUES('Lena', 'Mazur', 'lenamazur7122@email.pl')
INSERT INTO people VALUES('Michał', 'Mazur', 'michałmazur2918@email.pl')
INSERT INTO people VALUES('Igor', 'Krawczk', 'igorkrawczk9641@email.pl')
INSERT INTO people VALUES('Antonina', 'Walczak', 'antoninawalczak6087@email.pl')
INSERT INTO people VALUES('Lena', 'Stępień', 'lenastępień1799@email.pl')
INSERT INTO people VALUES('Hanna', 'Wróbel', 'hannawróbel3127@email.pl')
INSERT INTO people VALUES('Marcel', 'Zając', 'marcelzając6724@email.pl')
INSERT INTO people VALUES('Jakub', 'Nowak', 'jakubnowak3375@email.pl')
INSERT INTO people VALUES('Maja', 'Dudek', 'majadudek3549@email.pl')
INSERT INTO people VALUES('Wojciech', 'Adamczyk', 'wojciechadamczyk3822@email.pl')
INSERT INTO people VALUES('Piotr', 'Wróbel', 'piotrwróbel3952@email.pl')
INSERT INTO people VALUES('Szymon', 'Kaczmarek', 'szymonkaczmarek1860@email.pl')
INSERT INTO people VALUES('Maja', 'Zając', 'majazając9046@email.pl')
INSERT INTO people VALUES('Natalia', 'Szewczyk', 'nataliaszewczyk2780@email.pl')
INSERT INTO people VALUES('Antoni', 'Walczak', 'antoniwalczak2182@email.pl')
INSERT INTO people VALUES('Aleksander', 'Wieczorek', 'aleksanderwieczorek467@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Pawlak', 'zuzannapawlak9777@email.pl')
INSERT INTO people VALUES('Bartosz', 'Wójcik', 'bartoszwójcik1112@email.pl')
INSERT INTO people VALUES('Adam', 'Stępień', 'adamstępień2675@email.pl')
INSERT INTO people VALUES('Wiktor', 'Wójcik', 'wiktorwójcik1798@email.pl')
INSERT INTO people VALUES('Maja', 'Zając', 'majazając2290@email.pl')
INSERT INTO people VALUES('Antonina', 'Król', 'antoninakról7584@email.pl')
INSERT INTO people VALUES('Kacper', 'Król', 'kacperkról2707@email.pl')
INSERT INTO people VALUES('Emilia', 'Wróbel', 'emiliawróbel8376@email.pl')
INSERT INTO people VALUES('Wojciech', 'Adamczyk', 'wojciechadamczyk8687@email.pl')
INSERT INTO people VALUES('Natalia', 'Wójcik', 'nataliawójcik3502@email.pl')
INSERT INTO people VALUES('Antoni', 'Krawczk', 'antonikrawczk5126@email.pl')
INSERT INTO people VALUES('Natalia', 'Kaczmarek', 'nataliakaczmarek3397@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Wieczorek', 'aleksandrawieczorek344@email.pl')
INSERT INTO people VALUES('Lena', 'Adamczyk', 'lenaadamczyk8267@email.pl')
INSERT INTO people VALUES('Jakub', 'Duda', 'jakubduda255@email.pl')
INSERT INTO people VALUES('Adam', 'Woźniak', 'adamwoźniak9291@email.pl')
INSERT INTO people VALUES('Martyna', 'Pawlak', 'martynapawlak8381@email.pl')
INSERT INTO people VALUES('Alan', 'Michalak', 'alanmichalak2159@email.pl')
INSERT INTO people VALUES('Julia', 'Wieczorek', 'juliawieczorek742@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Nowak', 'aleksandranowak2850@email.pl')
INSERT INTO people VALUES('Oliwia', 'Woźniak', 'oliwiawoźniak4228@email.pl')
INSERT INTO people VALUES('Oliwia', 'Adamczyk', 'oliwiaadamczyk3909@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Michalak', 'zuzannamichalak1237@email.pl')
INSERT INTO people VALUES('Jan', 'Szewczyk', 'janszewczyk2973@email.pl')
INSERT INTO people VALUES('Mateusz', 'Nowak', 'mateusznowak4624@email.pl')
INSERT INTO people VALUES('Franciszek', 'Wróbel', 'franciszekwróbel3642@email.pl')
INSERT INTO people VALUES('Gabriela', 'Woźniak', 'gabrielawoźniak948@email.pl')
INSERT INTO people VALUES('Adam', 'Dudek', 'adamdudek6817@email.pl')
INSERT INTO people VALUES('Emilia', 'Zając', 'emiliazając2186@email.pl')
INSERT INTO people VALUES('Franciszek', 'Stępień', 'franciszekstępień6701@email.pl')
INSERT INTO people VALUES('Amelia', 'Adamczyk', 'ameliaadamczyk5160@email.pl')
INSERT INTO people VALUES('Nikola', 'Baran', 'nikolabaran3430@email.pl')
INSERT INTO people VALUES('Amelia', 'Wróbel', 'ameliawróbel1332@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Zając', 'mikołajzając6051@email.pl')
INSERT INTO people VALUES('Franciszek', 'Walczak', 'franciszekwalczak496@email.pl')
INSERT INTO people VALUES('Marcel', 'Pawlak', 'marcelpawlak3597@email.pl')
INSERT INTO people VALUES('Anna', 'Michalak', 'annamichalak3784@email.pl')
INSERT INTO people VALUES('Aleksander', 'Król', 'aleksanderkról9084@email.pl')
INSERT INTO people VALUES('Alan', 'Sikora', 'alansikora6459@email.pl')
INSERT INTO people VALUES('Martyna', 'Stępień', 'martynastępień633@email.pl')
INSERT INTO people VALUES('Anna', 'Mazur', 'annamazur5110@email.pl')
INSERT INTO people VALUES('Piotr', 'Szewczyk', 'piotrszewczyk1144@email.pl')
INSERT INTO people VALUES('Alicja', 'Nowak', 'alicjanowak7159@email.pl')
INSERT INTO people VALUES('Jakub', 'Stępień', 'jakubstępień1588@email.pl')
INSERT INTO people VALUES('Franciszek', 'Nowak', 'franciszeknowak3860@email.pl')
INSERT INTO people VALUES('Antoni', 'Pawlak', 'antonipawlak5400@email.pl')
INSERT INTO people VALUES('Emilia', 'Kaczmarek', 'emiliakaczmarek8564@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Zając', 'zuzannazając8308@email.pl')
INSERT INTO people VALUES('Hanna', 'Zając', 'hannazając4915@email.pl')
INSERT INTO people VALUES('Maja', 'Stępień', 'majastępień2952@email.pl')
INSERT INTO people VALUES('Michał', 'Michalak', 'michałmichalak3023@email.pl')
INSERT INTO people VALUES('Gabriela', 'Nowak', 'gabrielanowak8037@email.pl')
INSERT INTO people VALUES('Maja', 'Sikora', 'majasikora6560@email.pl')
INSERT INTO people VALUES('Emilia', 'Wójcik', 'emiliawójcik9857@email.pl')
INSERT INTO people VALUES('Nikola', 'Michalak', 'nikolamichalak7322@email.pl')
INSERT INTO people VALUES('Kacper', 'Michalak', 'kacpermichalak1482@email.pl')
INSERT INTO people VALUES('Jan', 'Woźniak', 'janwoźniak2246@email.pl')
INSERT INTO people VALUES('Nadia', 'Sikora', 'nadiasikora1475@email.pl')
INSERT INTO people VALUES('Gabriela', 'Wójcik', 'gabrielawójcik3971@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Wróbel', 'aleksandrawróbel7071@email.pl')
INSERT INTO people VALUES('Hanna', 'Dudek', 'hannadudek7397@email.pl')
INSERT INTO people VALUES('Maria', 'Wróbel', 'mariawróbel8702@email.pl')
INSERT INTO people VALUES('Maja', 'Pawlak', 'majapawlak1928@email.pl')
INSERT INTO people VALUES('Szymon', 'Kowalczyk', 'szymonkowalczyk1296@email.pl')
INSERT INTO people VALUES('Adam', 'Krawczk', 'adamkrawczk2734@email.pl')
INSERT INTO people VALUES('Jan', 'Duda', 'janduda1657@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Stępień', 'zuzannastępień3745@email.pl')
INSERT INTO people VALUES('Alan', 'Krawczk', 'alankrawczk8696@email.pl')
INSERT INTO people VALUES('Marcel', 'Wójcik', 'marcelwójcik4802@email.pl')
INSERT INTO people VALUES('Marcel', 'Kaczmarek', 'marcelkaczmarek6617@email.pl')
INSERT INTO people VALUES('Hanna', 'Kaczmarek', 'hannakaczmarek260@email.pl')
INSERT INTO people VALUES('Antoni', 'Dudek', 'antonidudek7140@email.pl')
INSERT INTO people VALUES('Zofia', 'Nowak', 'zofianowak76@email.pl')
INSERT INTO people VALUES('Amelia', 'Kaczmarek', 'ameliakaczmarek7885@email.pl')
INSERT INTO people VALUES('Wiktor', 'Pawlak', 'wiktorpawlak3460@email.pl')
INSERT INTO people VALUES('Antonina', 'Kowalczyk', 'antoninakowalczyk3280@email.pl')
INSERT INTO people VALUES('Szymon', 'Mazur', 'szymonmazur403@email.pl')
INSERT INTO people VALUES('Gabriela', 'Kaczmarek', 'gabrielakaczmarek2808@email.pl')
INSERT INTO people VALUES('Antoni', 'Baran', 'antonibaran7652@email.pl')
INSERT INTO people VALUES('Natalia', 'Krawczk', 'nataliakrawczk4942@email.pl')
INSERT INTO people VALUES('Antonina', 'Wójcik', 'antoninawójcik3041@email.pl')
INSERT INTO people VALUES('Maria', 'Kaczmarek', 'mariakaczmarek5918@email.pl')
INSERT INTO people VALUES('Alan', 'Dudek', 'alandudek9046@email.pl')
INSERT INTO people VALUES('Szymon', 'Stępień', 'szymonstępień8275@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Pawlak', 'mikołajpawlak2020@email.pl')
INSERT INTO people VALUES('Michał', 'Michalak', 'michałmichalak2847@email.pl')
INSERT INTO people VALUES('Oliwia', 'Wójcik', 'oliwiawójcik594@email.pl')
INSERT INTO people VALUES('Hanna', 'Szewczyk', 'hannaszewczyk3417@email.pl')
INSERT INTO people VALUES('Wiktor', 'Pawlak', 'wiktorpawlak5150@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Krawczk', 'mikołajkrawczk526@email.pl')
INSERT INTO people VALUES('Filip', 'Adamczyk', 'filipadamczyk6892@email.pl')
INSERT INTO people VALUES('Michał', 'Adamczyk', 'michaładamczyk728@email.pl')
INSERT INTO people VALUES('Antonina', 'Baran', 'antoninabaran8943@email.pl')
INSERT INTO people VALUES('Maria', 'Kaczmarek', 'mariakaczmarek7095@email.pl')
INSERT INTO people VALUES('Amelia', 'Wróbel', 'ameliawróbel1233@email.pl')
INSERT INTO people VALUES('Amelia', 'Szewczyk', 'ameliaszewczyk624@email.pl')
INSERT INTO people VALUES('Amelia', 'Sikora', 'ameliasikora8768@email.pl')
INSERT INTO people VALUES('Nadia', 'Woźniak', 'nadiawoźniak5386@email.pl')
INSERT INTO people VALUES('Mateusz', 'Michalak', 'mateuszmichalak7405@email.pl')
INSERT INTO people VALUES('Igor', 'Wróbel', 'igorwróbel7191@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Nowak', 'zuzannanowak6273@email.pl')
INSERT INTO people VALUES('Wojciech', 'Kowalczyk', 'wojciechkowalczyk9191@email.pl')
INSERT INTO people VALUES('Hanna', 'Baran', 'hannabaran218@email.pl')
INSERT INTO people VALUES('Franciszek', 'Woźniak', 'franciszekwoźniak9073@email.pl')
INSERT INTO people VALUES('Gabriela', 'Duda', 'gabrieladuda6671@email.pl')
INSERT INTO people VALUES('Dawid', 'Nowak', 'dawidnowak52@email.pl')
INSERT INTO people VALUES('Igor', 'Adamczyk', 'igoradamczyk6825@email.pl')
INSERT INTO people VALUES('Adam', 'Baran', 'adambaran1812@email.pl')
INSERT INTO people VALUES('Oliwia', 'Kaczmarek', 'oliwiakaczmarek8428@email.pl')
INSERT INTO people VALUES('Amelia', 'Mazur', 'ameliamazur8086@email.pl')
INSERT INTO people VALUES('Julia', 'Mazur', 'juliamazur729@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Stępień', 'wiktoriastępień4402@email.pl')
INSERT INTO people VALUES('Jakub', 'Wójcik', 'jakubwójcik9276@email.pl')
INSERT INTO people VALUES('Maja', 'Woźniak', 'majawoźniak5950@email.pl')
INSERT INTO people VALUES('Antonina', 'Baran', 'antoninabaran1784@email.pl')
INSERT INTO people VALUES('Antonina', 'Michalak', 'antoninamichalak1688@email.pl')
INSERT INTO people VALUES('Jan', 'Zając', 'janzając6941@email.pl')
INSERT INTO people VALUES('Jan', 'Woźniak', 'janwoźniak9756@email.pl')
INSERT INTO people VALUES('Lena', 'Szewczyk', 'lenaszewczyk1447@email.pl')
INSERT INTO people VALUES('Alicja', 'Nowak', 'alicjanowak9728@email.pl')
INSERT INTO people VALUES('Maja', 'Mazur', 'majamazur657@email.pl')
INSERT INTO people VALUES('Anna', 'Mazur', 'annamazur6342@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Baran', 'aleksandrabaran6699@email.pl')
INSERT INTO people VALUES('Zofia', 'Szewczyk', 'zofiaszewczyk6145@email.pl')
INSERT INTO people VALUES('Piotr', 'Duda', 'piotrduda7210@email.pl')
INSERT INTO people VALUES('Igor', 'Baran', 'igorbaran4280@email.pl')
INSERT INTO people VALUES('Adam', 'Wróbel', 'adamwróbel4549@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Wieczorek', 'zuzannawieczorek1652@email.pl')
INSERT INTO people VALUES('Wojciech', 'Stępień', 'wojciechstępień4873@email.pl')
INSERT INTO people VALUES('Aleksander', 'Stępień', 'aleksanderstępień8161@email.pl')
INSERT INTO people VALUES('Antonina', 'Wieczorek', 'antoninawieczorek5339@email.pl')
INSERT INTO people VALUES('Julia', 'Szewczyk', 'juliaszewczyk8914@email.pl')
INSERT INTO people VALUES('Aleksander', 'Duda', 'aleksanderduda365@email.pl')
INSERT INTO people VALUES('Oliwia', 'Pawlak', 'oliwiapawlak5592@email.pl')
INSERT INTO people VALUES('Mateusz', 'Szewczyk', 'mateuszszewczyk2504@email.pl')
INSERT INTO people VALUES('Jan', 'Sikora', 'jansikora8477@email.pl')
INSERT INTO people VALUES('Maria', 'Pawlak', 'mariapawlak2446@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Stępień', 'mikołajstępień8014@email.pl')
INSERT INTO people VALUES('Maja', 'Król', 'majakról8599@email.pl')
INSERT INTO people VALUES('Dawid', 'Sikora', 'dawidsikora9895@email.pl')
INSERT INTO people VALUES('Hanna', 'Król', 'hannakról457@email.pl')
INSERT INTO people VALUES('Zofia', 'Krawczk', 'zofiakrawczk4364@email.pl')
INSERT INTO people VALUES('Antoni', 'Szewczyk', 'antoniszewczyk200@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Kowalczyk', 'mikołajkowalczyk5944@email.pl')
INSERT INTO people VALUES('Michał', 'Szewczyk', 'michałszewczyk1660@email.pl')
INSERT INTO people VALUES('Antoni', 'Michalak', 'antonimichalak528@email.pl')
INSERT INTO people VALUES('Alan', 'Wróbel', 'alanwróbel7611@email.pl')
INSERT INTO people VALUES('Kacper', 'Zając', 'kacperzając3730@email.pl')
INSERT INTO people VALUES('Gabriela', 'Kaczmarek', 'gabrielakaczmarek5547@email.pl')
INSERT INTO people VALUES('Julia', 'Wieczorek', 'juliawieczorek430@email.pl')
INSERT INTO people VALUES('Dawid', 'Nowak', 'dawidnowak3437@email.pl')
INSERT INTO people VALUES('Alicja', 'Pawlak', 'alicjapawlak114@email.pl')
INSERT INTO people VALUES('Amelia', 'Wróbel', 'ameliawróbel8916@email.pl')
INSERT INTO people VALUES('Piotr', 'Stępień', 'piotrstępień3168@email.pl')
INSERT INTO people VALUES('Hanna', 'Nowak', 'hannanowak4921@email.pl')
INSERT INTO people VALUES('Jan', 'Sikora', 'jansikora7139@email.pl')
INSERT INTO people VALUES('Hanna', 'Adamczyk', 'hannaadamczyk2573@email.pl')
INSERT INTO people VALUES('Nadia', 'Krawczk', 'nadiakrawczk178@email.pl')
INSERT INTO people VALUES('Mateusz', 'Wójcik', 'mateuszwójcik65@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Wróbel', 'aleksandrawróbel7476@email.pl')
INSERT INTO people VALUES('Igor', 'Kaczmarek', 'igorkaczmarek2195@email.pl')
INSERT INTO people VALUES('Wojciech', 'Kaczmarek', 'wojciechkaczmarek7558@email.pl')
INSERT INTO people VALUES('Antonina', 'Michalak', 'antoninamichalak4187@email.pl')
INSERT INTO people VALUES('Maria', 'Baran', 'mariabaran2906@email.pl')
INSERT INTO people VALUES('Jakub', 'Wieczorek', 'jakubwieczorek6281@email.pl')
INSERT INTO people VALUES('Lena', 'Nowak', 'lenanowak7072@email.pl')
INSERT INTO people VALUES('Lena', 'Adamczyk', 'lenaadamczyk8856@email.pl')
INSERT INTO people VALUES('Franciszek', 'Kowalczyk', 'franciszekkowalczyk1495@email.pl')
INSERT INTO people VALUES('Mateusz', 'Dudek', 'mateuszdudek1230@email.pl')
INSERT INTO people VALUES('Natalia', 'Zając', 'nataliazając1837@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Michalak', 'wiktoriamichalak4266@email.pl')
INSERT INTO people VALUES('Maria', 'Stępień', 'mariastępień543@email.pl')
INSERT INTO people VALUES('Jakub', 'Wójcik', 'jakubwójcik4482@email.pl')
INSERT INTO people VALUES('Natalia', 'Kowalczyk', 'nataliakowalczyk9961@email.pl')
INSERT INTO people VALUES('Jakub', 'Zając', 'jakubzając4837@email.pl')
INSERT INTO people VALUES('Nikola', 'Duda', 'nikoladuda7497@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Kaczmarek', 'aleksandrakaczmarek2209@email.pl')
INSERT INTO people VALUES('Szymon', 'Baran', 'szymonbaran7772@email.pl')
INSERT INTO people VALUES('Dawid', 'Duda', 'dawidduda4287@email.pl')
INSERT INTO people VALUES('Antoni', 'Michalak', 'antonimichalak9461@email.pl')
INSERT INTO people VALUES('Nikola', 'Dudek', 'nikoladudek3421@email.pl')
INSERT INTO people VALUES('Maria', 'Adamczyk', 'mariaadamczyk4421@email.pl')
INSERT INTO people VALUES('Maria', 'Zając', 'mariazając3628@email.pl')
INSERT INTO people VALUES('Maja', 'Zając', 'majazając3961@email.pl')
INSERT INTO people VALUES('Emilia', 'Wróbel', 'emiliawróbel7916@email.pl')
INSERT INTO people VALUES('Filip', 'Kaczmarek', 'filipkaczmarek9177@email.pl')
INSERT INTO people VALUES('Kacper', 'Kowalczyk', 'kacperkowalczyk8108@email.pl')
INSERT INTO people VALUES('Hanna', 'Krawczk', 'hannakrawczk5102@email.pl')
INSERT INTO people VALUES('Hanna', 'Mazur', 'hannamazur5133@email.pl')
INSERT INTO people VALUES('Amelia', 'Zając', 'ameliazając1463@email.pl')
INSERT INTO people VALUES('Franciszek', 'Wójcik', 'franciszekwójcik8034@email.pl')
INSERT INTO people VALUES('Bartosz', 'Michalak', 'bartoszmichalak3841@email.pl')
INSERT INTO people VALUES('Bartosz', 'Wójcik', 'bartoszwójcik3153@email.pl')
INSERT INTO people VALUES('Adam', 'Nowak', 'adamnowak778@email.pl')
INSERT INTO people VALUES('Michał', 'Sikora', 'michałsikora8736@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Kaczmarek', 'zuzannakaczmarek6460@email.pl')
INSERT INTO people VALUES('Szymon', 'Pawlak', 'szymonpawlak6496@email.pl')
INSERT INTO people VALUES('Zofia', 'Kaczmarek', 'zofiakaczmarek7756@email.pl')
INSERT INTO people VALUES('Maja', 'Król', 'majakról1857@email.pl')
INSERT INTO people VALUES('Jan', 'Baran', 'janbaran940@email.pl')
INSERT INTO people VALUES('Marcel', 'Adamczyk', 'marceladamczyk8677@email.pl')
INSERT INTO people VALUES('Jan', 'Dudek', 'jandudek8863@email.pl')
INSERT INTO people VALUES('Jakub', 'Woźniak', 'jakubwoźniak7386@email.pl')
INSERT INTO people VALUES('Jan', 'Król', 'jankról7387@email.pl')
INSERT INTO people VALUES('Filip', 'Kowalczyk', 'filipkowalczyk7422@email.pl')
INSERT INTO people VALUES('Emilia', 'Mazur', 'emiliamazur8863@email.pl')
INSERT INTO people VALUES('Emilia', 'Pawlak', 'emiliapawlak3601@email.pl')
INSERT INTO people VALUES('Alan', 'Kowalczyk', 'alankowalczyk2763@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Walczak', 'mikołajwalczak9863@email.pl')
INSERT INTO people VALUES('Kacper', 'Wieczorek', 'kacperwieczorek1498@email.pl')
INSERT INTO people VALUES('Oliwia', 'Adamczyk', 'oliwiaadamczyk2583@email.pl')
INSERT INTO people VALUES('Dawid', 'Król', 'dawidkról4542@email.pl')
INSERT INTO people VALUES('Jan', 'Szewczyk', 'janszewczyk8960@email.pl')
INSERT INTO people VALUES('Julia', 'Zając', 'juliazając1839@email.pl')
INSERT INTO people VALUES('Adam', 'Kowalczyk', 'adamkowalczyk8668@email.pl')
INSERT INTO people VALUES('Hanna', 'Adamczyk', 'hannaadamczyk1046@email.pl')
INSERT INTO people VALUES('Nadia', 'Dudek', 'nadiadudek3090@email.pl')
INSERT INTO people VALUES('Amelia', 'Mazur', 'ameliamazur6310@email.pl')
INSERT INTO people VALUES('Igor', 'Stępień', 'igorstępień4680@email.pl')
INSERT INTO people VALUES('Hanna', 'Wójcik', 'hannawójcik3841@email.pl')
INSERT INTO people VALUES('Franciszek', 'Dudek', 'franciszekdudek6812@email.pl')
INSERT INTO people VALUES('Bartosz', 'Król', 'bartoszkról6651@email.pl')
INSERT INTO people VALUES('Lena', 'Krawczk', 'lenakrawczk1757@email.pl')
INSERT INTO people VALUES('Igor', 'Duda', 'igorduda7665@email.pl')
INSERT INTO people VALUES('Anna', 'Woźniak', 'annawoźniak1604@email.pl')
INSERT INTO people VALUES('Nadia', 'Dudek', 'nadiadudek5990@email.pl')
INSERT INTO people VALUES('Filip', 'Adamczyk', 'filipadamczyk9833@email.pl')
INSERT INTO people VALUES('Zofia', 'Krawczk', 'zofiakrawczk7071@email.pl')
INSERT INTO people VALUES('Igor', 'Walczak', 'igorwalczak7985@email.pl')
INSERT INTO people VALUES('Jan', 'Sikora', 'jansikora3024@email.pl')
INSERT INTO people VALUES('Adam', 'Sikora', 'adamsikora6156@email.pl')
INSERT INTO people VALUES('Jakub', 'Mazur', 'jakubmazur447@email.pl')
INSERT INTO people VALUES('Nadia', 'Adamczyk', 'nadiaadamczyk1650@email.pl')
INSERT INTO people VALUES('Zofia', 'Kowalczyk', 'zofiakowalczyk3033@email.pl')
INSERT INTO people VALUES('Igor', 'Kaczmarek', 'igorkaczmarek1155@email.pl')
INSERT INTO people VALUES('Lena', 'Dudek', 'lenadudek9692@email.pl')
INSERT INTO people VALUES('Bartosz', 'Sikora', 'bartoszsikora8992@email.pl')
INSERT INTO people VALUES('Antonina', 'Wróbel', 'antoninawróbel4937@email.pl')
INSERT INTO people VALUES('Jan', 'Wróbel', 'janwróbel7363@email.pl')
INSERT INTO people VALUES('Marcel', 'Adamczyk', 'marceladamczyk5986@email.pl')
INSERT INTO people VALUES('Anna', 'Duda', 'annaduda268@email.pl')
INSERT INTO people VALUES('Maja', 'Walczak', 'majawalczak6259@email.pl')
INSERT INTO people VALUES('Martyna', 'Wróbel', 'martynawróbel4458@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Mazur', 'aleksandramazur8620@email.pl')
INSERT INTO people VALUES('Jakub', 'Szewczyk', 'jakubszewczyk9436@email.pl')
INSERT INTO people VALUES('Szymon', 'Adamczyk', 'szymonadamczyk9028@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Michalak', 'mikołajmichalak3484@email.pl')
INSERT INTO people VALUES('Nikola', 'Pawlak', 'nikolapawlak2805@email.pl')
INSERT INTO people VALUES('Igor', 'Kaczmarek', 'igorkaczmarek1925@email.pl')
INSERT INTO people VALUES('Emilia', 'Dudek', 'emiliadudek73@email.pl')
INSERT INTO people VALUES('Amelia', 'Wójcik', 'ameliawójcik1684@email.pl')
INSERT INTO people VALUES('Wojciech', 'Wójcik', 'wojciechwójcik2241@email.pl')
INSERT INTO people VALUES('Michał', 'Wróbel', 'michałwróbel5240@email.pl')
INSERT INTO people VALUES('Antonina', 'Pawlak', 'antoninapawlak8642@email.pl')
INSERT INTO people VALUES('Szymon', 'Kaczmarek', 'szymonkaczmarek6362@email.pl')
INSERT INTO people VALUES('Adam', 'Sikora', 'adamsikora6409@email.pl')
INSERT INTO people VALUES('Hanna', 'Zając', 'hannazając4081@email.pl')
INSERT INTO people VALUES('Hanna', 'Pawlak', 'hannapawlak1321@email.pl')
INSERT INTO people VALUES('Wiktor', 'Walczak', 'wiktorwalczak1367@email.pl')
INSERT INTO people VALUES('Bartosz', 'Wróbel', 'bartoszwróbel6521@email.pl')
INSERT INTO people VALUES('Oliwia', 'Michalak', 'oliwiamichalak4707@email.pl')
INSERT INTO people VALUES('Franciszek', 'Mazur', 'franciszekmazur1468@email.pl')
INSERT INTO people VALUES('Nikola', 'Kaczmarek', 'nikolakaczmarek1201@email.pl')
INSERT INTO people VALUES('Nadia', 'Stępień', 'nadiastępień8388@email.pl')
INSERT INTO people VALUES('Emilia', 'Stępień', 'emiliastępień1886@email.pl')
INSERT INTO people VALUES('Anna', 'Nowak', 'annanowak4330@email.pl')
INSERT INTO people VALUES('Oliwia', 'Wieczorek', 'oliwiawieczorek2996@email.pl')
INSERT INTO people VALUES('Nikola', 'Kowalczyk', 'nikolakowalczyk7334@email.pl')
INSERT INTO people VALUES('Natalia', 'Zając', 'nataliazając8933@email.pl')
INSERT INTO people VALUES('Alicja', 'Król', 'alicjakról5530@email.pl')
INSERT INTO people VALUES('Jakub', 'Kaczmarek', 'jakubkaczmarek6766@email.pl')
INSERT INTO people VALUES('Maja', 'Sikora', 'majasikora8048@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Mazur', 'zuzannamazur1786@email.pl')
INSERT INTO people VALUES('Marcel', 'Szewczyk', 'marcelszewczyk4211@email.pl')
INSERT INTO people VALUES('Amelia', 'Kowalczyk', 'ameliakowalczyk3686@email.pl')
INSERT INTO people VALUES('Julia', 'Kaczmarek', 'juliakaczmarek4878@email.pl')
INSERT INTO people VALUES('Jakub', 'Michalak', 'jakubmichalak9088@email.pl')
INSERT INTO people VALUES('Martyna', 'Kowalczyk', 'martynakowalczyk5119@email.pl')
INSERT INTO people VALUES('Natalia', 'Walczak', 'nataliawalczak6277@email.pl')
INSERT INTO people VALUES('Filip', 'Kaczmarek', 'filipkaczmarek826@email.pl')
INSERT INTO people VALUES('Alicja', 'Wróbel', 'alicjawróbel7926@email.pl')
INSERT INTO people VALUES('Anna', 'Sikora', 'annasikora6606@email.pl')
INSERT INTO people VALUES('Martyna', 'Zając', 'martynazając238@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Kaczmarek', 'aleksandrakaczmarek4729@email.pl')
INSERT INTO people VALUES('Wiktor', 'Wójcik', 'wiktorwójcik5088@email.pl')
INSERT INTO people VALUES('Oliwia', 'Kowalczyk', 'oliwiakowalczyk8462@email.pl')
INSERT INTO people VALUES('Franciszek', 'Pawlak', 'franciszekpawlak2359@email.pl')
INSERT INTO people VALUES('Oliwia', 'Pawlak', 'oliwiapawlak155@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Wróbel', 'wiktoriawróbel1645@email.pl')
INSERT INTO people VALUES('Emilia', 'Krawczk', 'emiliakrawczk1326@email.pl')
INSERT INTO people VALUES('Jan', 'Krawczk', 'jankrawczk6922@email.pl')
INSERT INTO people VALUES('Antoni', 'Kowalczyk', 'antonikowalczyk1425@email.pl')
INSERT INTO people VALUES('Antonina', 'Wieczorek', 'antoninawieczorek5397@email.pl')
INSERT INTO people VALUES('Zofia', 'Adamczyk', 'zofiaadamczyk5908@email.pl')
INSERT INTO people VALUES('Szymon', 'Adamczyk', 'szymonadamczyk9913@email.pl')
INSERT INTO people VALUES('Marcel', 'Wójcik', 'marcelwójcik2177@email.pl')
INSERT INTO people VALUES('Antonina', 'Wieczorek', 'antoninawieczorek705@email.pl')
INSERT INTO people VALUES('Oliwia', 'Baran', 'oliwiabaran858@email.pl')
INSERT INTO people VALUES('Jakub', 'Król', 'jakubkról1035@email.pl')
INSERT INTO people VALUES('Maria', 'Adamczyk', 'mariaadamczyk5814@email.pl')
INSERT INTO people VALUES('Szymon', 'Szewczyk', 'szymonszewczyk1145@email.pl')
INSERT INTO people VALUES('Alicja', 'Pawlak', 'alicjapawlak7336@email.pl')
INSERT INTO people VALUES('Nikola', 'Pawlak', 'nikolapawlak9619@email.pl')
INSERT INTO people VALUES('Nadia', 'Kaczmarek', 'nadiakaczmarek4703@email.pl')
INSERT INTO people VALUES('Wojciech', 'Stępień', 'wojciechstępień550@email.pl')
INSERT INTO people VALUES('Piotr', 'Adamczyk', 'piotradamczyk682@email.pl')
INSERT INTO people VALUES('Michał', 'Krawczk', 'michałkrawczk4701@email.pl')
INSERT INTO people VALUES('Natalia', 'Walczak', 'nataliawalczak4298@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Wróbel', 'zuzannawróbel4657@email.pl')
INSERT INTO people VALUES('Franciszek', 'Baran', 'franciszekbaran1130@email.pl')
INSERT INTO people VALUES('Antoni', 'Walczak', 'antoniwalczak110@email.pl')
INSERT INTO people VALUES('Zofia', 'Kaczmarek', 'zofiakaczmarek6623@email.pl')
INSERT INTO people VALUES('Hanna', 'Wójcik', 'hannawójcik4205@email.pl')
INSERT INTO people VALUES('Aleksander', 'Walczak', 'aleksanderwalczak7034@email.pl')
INSERT INTO people VALUES('Piotr', 'Duda', 'piotrduda2506@email.pl')
INSERT INTO people VALUES('Jan', 'Król', 'jankról4199@email.pl')
INSERT INTO people VALUES('Jakub', 'Adamczyk', 'jakubadamczyk1863@email.pl')
INSERT INTO people VALUES('Michał', 'Adamczyk', 'michaładamczyk5147@email.pl')
INSERT INTO people VALUES('Natalia', 'Pawlak', 'nataliapawlak5932@email.pl')
INSERT INTO people VALUES('Bartosz', 'Wójcik', 'bartoszwójcik1419@email.pl')
INSERT INTO people VALUES('Maria', 'Baran', 'mariabaran9017@email.pl')
INSERT INTO people VALUES('Nikola', 'Mazur', 'nikolamazur7228@email.pl')
INSERT INTO people VALUES('Nikola', 'Mazur', 'nikolamazur874@email.pl')
INSERT INTO people VALUES('Oliwia', 'Woźniak', 'oliwiawoźniak9109@email.pl')
INSERT INTO people VALUES('Jakub', 'Wójcik', 'jakubwójcik2022@email.pl')
INSERT INTO people VALUES('Adam', 'Szewczyk', 'adamszewczyk6959@email.pl')
INSERT INTO people VALUES('Marcel', 'Krawczk', 'marcelkrawczk1836@email.pl')
INSERT INTO people VALUES('Filip', 'Szewczyk', 'filipszewczyk9482@email.pl')
INSERT INTO people VALUES('Szymon', 'Adamczyk', 'szymonadamczyk1300@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Adamczyk', 'aleksandraadamczyk2939@email.pl')
INSERT INTO people VALUES('Marcel', 'Szewczyk', 'marcelszewczyk1616@email.pl')
INSERT INTO people VALUES('Gabriela', 'Michalak', 'gabrielamichalak3739@email.pl')
INSERT INTO people VALUES('Martyna', 'Pawlak', 'martynapawlak3839@email.pl')
INSERT INTO people VALUES('Amelia', 'Król', 'ameliakról3582@email.pl')
INSERT INTO people VALUES('Maja', 'Wróbel', 'majawróbel7831@email.pl')
INSERT INTO people VALUES('Wojciech', 'Sikora', 'wojciechsikora2101@email.pl')
INSERT INTO people VALUES('Gabriela', 'Sikora', 'gabrielasikora8946@email.pl')
INSERT INTO people VALUES('Michał', 'Zając', 'michałzając3353@email.pl')
INSERT INTO people VALUES('Igor', 'Sikora', 'igorsikora4958@email.pl')
INSERT INTO people VALUES('Maja', 'Michalak', 'majamichalak4915@email.pl')
INSERT INTO people VALUES('Franciszek', 'Mazur', 'franciszekmazur166@email.pl')
INSERT INTO people VALUES('Dawid', 'Wieczorek', 'dawidwieczorek5674@email.pl')
INSERT INTO people VALUES('Amelia', 'Szewczyk', 'ameliaszewczyk7997@email.pl')
INSERT INTO people VALUES('Julia', 'Michalak', 'juliamichalak6002@email.pl')
INSERT INTO people VALUES('Alicja', 'Zając', 'alicjazając726@email.pl')
INSERT INTO people VALUES('Szymon', 'Sikora', 'szymonsikora893@email.pl')
INSERT INTO people VALUES('Wojciech', 'Kowalczyk', 'wojciechkowalczyk8495@email.pl')
INSERT INTO people VALUES('Jan', 'Nowak', 'jannowak5264@email.pl')
INSERT INTO people VALUES('Marcel', 'Nowak', 'marcelnowak3299@email.pl')
INSERT INTO people VALUES('Alan', 'Woźniak', 'alanwoźniak7921@email.pl')
INSERT INTO people VALUES('Szymon', 'Dudek', 'szymondudek7298@email.pl')
INSERT INTO people VALUES('Julia', 'Walczak', 'juliawalczak7074@email.pl')
INSERT INTO people VALUES('Anna', 'Wójcik', 'annawójcik5753@email.pl')
INSERT INTO people VALUES('Marcel', 'Mazur', 'marcelmazur6628@email.pl')
INSERT INTO people VALUES('Amelia', 'Kowalczyk', 'ameliakowalczyk2153@email.pl')
INSERT INTO people VALUES('Natalia', 'Krawczk', 'nataliakrawczk735@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Stępień', 'mikołajstępień1035@email.pl')
INSERT INTO people VALUES('Hanna', 'Wieczorek', 'hannawieczorek554@email.pl')
INSERT INTO people VALUES('Dawid', 'Woźniak', 'dawidwoźniak2608@email.pl')
INSERT INTO people VALUES('Antoni', 'Szewczyk', 'antoniszewczyk1598@email.pl')
INSERT INTO people VALUES('Adam', 'Woźniak', 'adamwoźniak5362@email.pl')
INSERT INTO people VALUES('Natalia', 'Kaczmarek', 'nataliakaczmarek9148@email.pl')
INSERT INTO people VALUES('Adam', 'Duda', 'adamduda1113@email.pl')
INSERT INTO people VALUES('Wojciech', 'Wieczorek', 'wojciechwieczorek9559@email.pl')
INSERT INTO people VALUES('Nadia', 'Szewczyk', 'nadiaszewczyk4044@email.pl')
INSERT INTO people VALUES('Kacper', 'Baran', 'kacperbaran7797@email.pl')
INSERT INTO people VALUES('Hanna', 'Stępień', 'hannastępień2073@email.pl')
INSERT INTO people VALUES('Anna', 'Adamczyk', 'annaadamczyk6747@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Zając', 'aleksandrazając8907@email.pl')
INSERT INTO people VALUES('Antoni', 'Michalak', 'antonimichalak5059@email.pl')
INSERT INTO people VALUES('Igor', 'Baran', 'igorbaran3614@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Nowak', 'zuzannanowak3788@email.pl')
INSERT INTO people VALUES('Kacper', 'Wieczorek', 'kacperwieczorek6976@email.pl')
INSERT INTO people VALUES('Piotr', 'Sikora', 'piotrsikora8004@email.pl')
INSERT INTO people VALUES('Wiktor', 'Woźniak', 'wiktorwoźniak3666@email.pl')
INSERT INTO people VALUES('Aleksander', 'Wieczorek', 'aleksanderwieczorek9557@email.pl')
INSERT INTO people VALUES('Oliwia', 'Walczak', 'oliwiawalczak183@email.pl')
INSERT INTO people VALUES('Gabriela', 'Szewczyk', 'gabrielaszewczyk80@email.pl')
INSERT INTO people VALUES('Wojciech', 'Adamczyk', 'wojciechadamczyk1226@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Wójcik', 'mikołajwójcik5867@email.pl')
INSERT INTO people VALUES('Michał', 'Kowalczyk', 'michałkowalczyk6712@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Zając', 'zuzannazając93@email.pl')
INSERT INTO people VALUES('Hanna', 'Walczak', 'hannawalczak1766@email.pl')
INSERT INTO people VALUES('Nikola', 'Król', 'nikolakról8741@email.pl')
INSERT INTO people VALUES('Adam', 'Szewczyk', 'adamszewczyk283@email.pl')
INSERT INTO people VALUES('Martyna', 'Nowak', 'martynanowak4646@email.pl')
INSERT INTO people VALUES('Jan', 'Adamczyk', 'janadamczyk5353@email.pl')
INSERT INTO people VALUES('Franciszek', 'Zając', 'franciszekzając7549@email.pl')
INSERT INTO people VALUES('Maja', 'Kaczmarek', 'majakaczmarek1333@email.pl')
INSERT INTO people VALUES('Alan', 'Wójcik', 'alanwójcik7697@email.pl')
INSERT INTO people VALUES('Oliwia', 'Szewczyk', 'oliwiaszewczyk5294@email.pl')
INSERT INTO people VALUES('Natalia', 'Woźniak', 'nataliawoźniak3459@email.pl')
INSERT INTO people VALUES('Szymon', 'Szewczyk', 'szymonszewczyk9519@email.pl')
INSERT INTO people VALUES('Maja', 'Nowak', 'majanowak9422@email.pl')
INSERT INTO people VALUES('Adam', 'Krawczk', 'adamkrawczk3228@email.pl')
INSERT INTO people VALUES('Franciszek', 'Adamczyk', 'franciszekadamczyk3534@email.pl')
INSERT INTO people VALUES('Antonina', 'Zając', 'antoninazając7997@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Woźniak', 'mikołajwoźniak2648@email.pl')
INSERT INTO people VALUES('Adam', 'Zając', 'adamzając9968@email.pl')
INSERT INTO people VALUES('Adam', 'Zając', 'adamzając8409@email.pl')
INSERT INTO people VALUES('Jakub', 'Nowak', 'jakubnowak4992@email.pl')
INSERT INTO people VALUES('Igor', 'Wójcik', 'igorwójcik4667@email.pl')
INSERT INTO people VALUES('Igor', 'Dudek', 'igordudek1514@email.pl')
INSERT INTO people VALUES('Julia', 'Zając', 'juliazając1191@email.pl')
INSERT INTO people VALUES('Maja', 'Wróbel', 'majawróbel6783@email.pl')
INSERT INTO people VALUES('Szymon', 'Krawczk', 'szymonkrawczk406@email.pl')
INSERT INTO people VALUES('Maria', 'Król', 'mariakról552@email.pl')
INSERT INTO people VALUES('Antoni', 'Woźniak', 'antoniwoźniak6372@email.pl')
INSERT INTO people VALUES('Michał', 'Kowalczyk', 'michałkowalczyk2630@email.pl')
INSERT INTO people VALUES('Hanna', 'Woźniak', 'hannawoźniak7734@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Woźniak', 'wiktoriawoźniak4879@email.pl')
INSERT INTO people VALUES('Adam', 'Adamczyk', 'adamadamczyk6133@email.pl')
INSERT INTO people VALUES('Mateusz', 'Mazur', 'mateuszmazur6711@email.pl')
INSERT INTO people VALUES('Alan', 'Woźniak', 'alanwoźniak4941@email.pl')
INSERT INTO people VALUES('Alicja', 'Sikora', 'alicjasikora299@email.pl')
INSERT INTO people VALUES('Anna', 'Krawczk', 'annakrawczk5503@email.pl')
INSERT INTO people VALUES('Mateusz', 'Baran', 'mateuszbaran3699@email.pl')
INSERT INTO people VALUES('Nikola', 'Baran', 'nikolabaran2488@email.pl')
INSERT INTO people VALUES('Antoni', 'Duda', 'antoniduda8622@email.pl')
INSERT INTO people VALUES('Maria', 'Kaczmarek', 'mariakaczmarek8181@email.pl')
INSERT INTO people VALUES('Alicja', 'Stępień', 'alicjastępień7422@email.pl')
INSERT INTO people VALUES('Michał', 'Michalak', 'michałmichalak9764@email.pl')
INSERT INTO people VALUES('Maria', 'Pawlak', 'mariapawlak7741@email.pl')
INSERT INTO people VALUES('Amelia', 'Nowak', 'amelianowak4263@email.pl')
INSERT INTO people VALUES('Piotr', 'Wróbel', 'piotrwróbel8915@email.pl')
INSERT INTO people VALUES('Michał', 'Baran', 'michałbaran5808@email.pl')
INSERT INTO people VALUES('Zofia', 'Adamczyk', 'zofiaadamczyk9108@email.pl')
INSERT INTO people VALUES('Martyna', 'Szewczyk', 'martynaszewczyk810@email.pl')
INSERT INTO people VALUES('Lena', 'Kowalczyk', 'lenakowalczyk8768@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Michalak', 'mikołajmichalak702@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Mazur', 'aleksandramazur6049@email.pl')
INSERT INTO people VALUES('Julia', 'Walczak', 'juliawalczak119@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Dudek', 'mikołajdudek5153@email.pl')
INSERT INTO people VALUES('Nikola', 'Michalak', 'nikolamichalak246@email.pl')
INSERT INTO people VALUES('Emilia', 'Król', 'emiliakról655@email.pl')
INSERT INTO people VALUES('Aleksander', 'Baran', 'aleksanderbaran5188@email.pl')
INSERT INTO people VALUES('Alan', 'Nowak', 'alannowak2001@email.pl')
INSERT INTO people VALUES('Antoni', 'Nowak', 'antoninowak1254@email.pl')
INSERT INTO people VALUES('Alan', 'Sikora', 'alansikora9870@email.pl')
INSERT INTO people VALUES('Gabriela', 'Walczak', 'gabrielawalczak3787@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Stępień', 'wiktoriastępień6786@email.pl')
INSERT INTO people VALUES('Maja', 'Sikora', 'majasikora4800@email.pl')
INSERT INTO people VALUES('Dawid', 'Król', 'dawidkról1020@email.pl')
INSERT INTO people VALUES('Adam', 'Nowak', 'adamnowak5751@email.pl')
INSERT INTO people VALUES('Alicja', 'Dudek', 'alicjadudek8963@email.pl')
INSERT INTO people VALUES('Jan', 'Zając', 'janzając8597@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Wróbel', 'wiktoriawróbel3549@email.pl')
INSERT INTO people VALUES('Julia', 'Mazur', 'juliamazur6472@email.pl')
INSERT INTO people VALUES('Zofia', 'Walczak', 'zofiawalczak2571@email.pl')
INSERT INTO people VALUES('Franciszek', 'Wójcik', 'franciszekwójcik8063@email.pl')
INSERT INTO people VALUES('Alan', 'Szewczyk', 'alanszewczyk5751@email.pl')
INSERT INTO people VALUES('Lena', 'Sikora', 'lenasikora6536@email.pl')
INSERT INTO people VALUES('Amelia', 'Zając', 'ameliazając6568@email.pl')
INSERT INTO people VALUES('Bartosz', 'Dudek', 'bartoszdudek5328@email.pl')
INSERT INTO people VALUES('Adam', 'Adamczyk', 'adamadamczyk7418@email.pl')
INSERT INTO people VALUES('Nikola', 'Woźniak', 'nikolawoźniak311@email.pl')
INSERT INTO people VALUES('Jakub', 'Szewczyk', 'jakubszewczyk498@email.pl')
INSERT INTO people VALUES('Antonina', 'Kowalczyk', 'antoninakowalczyk5692@email.pl')
INSERT INTO people VALUES('Hanna', 'Dudek', 'hannadudek553@email.pl')
INSERT INTO people VALUES('Dawid', 'Adamczyk', 'dawidadamczyk905@email.pl')
INSERT INTO people VALUES('Hanna', 'Pawlak', 'hannapawlak6597@email.pl')
INSERT INTO people VALUES('Bartosz', 'Nowak', 'bartosznowak5778@email.pl')
INSERT INTO people VALUES('Antoni', 'Nowak', 'antoninowak4500@email.pl')
INSERT INTO people VALUES('Igor', 'Adamczyk', 'igoradamczyk141@email.pl')
INSERT INTO people VALUES('Mateusz', 'Nowak', 'mateusznowak2382@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Wieczorek', 'wiktoriawieczorek677@email.pl')
INSERT INTO people VALUES('Alicja', 'Sikora', 'alicjasikora1170@email.pl')
INSERT INTO people VALUES('Jakub', 'Szewczyk', 'jakubszewczyk9711@email.pl')
INSERT INTO people VALUES('Jakub', 'Król', 'jakubkról1959@email.pl')
INSERT INTO people VALUES('Dawid', 'Nowak', 'dawidnowak9020@email.pl')
INSERT INTO people VALUES('Emilia', 'Kaczmarek', 'emiliakaczmarek9378@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Wróbel', 'zuzannawróbel6979@email.pl')
INSERT INTO people VALUES('Filip', 'Nowak', 'filipnowak2168@email.pl')
INSERT INTO people VALUES('Igor', 'Walczak', 'igorwalczak805@email.pl')
INSERT INTO people VALUES('Anna', 'Król', 'annakról9691@email.pl')
INSERT INTO people VALUES('Mateusz', 'Dudek', 'mateuszdudek9118@email.pl')
INSERT INTO people VALUES('Adam', 'Mazur', 'adammazur3253@email.pl')
INSERT INTO people VALUES('Alan', 'Kaczmarek', 'alankaczmarek5356@email.pl')
INSERT INTO people VALUES('Adam', 'Duda', 'adamduda7782@email.pl')
INSERT INTO people VALUES('Bartosz', 'Kaczmarek', 'bartoszkaczmarek5298@email.pl')
INSERT INTO people VALUES('Filip', 'Król', 'filipkról2269@email.pl')
INSERT INTO people VALUES('Julia', 'Walczak', 'juliawalczak1895@email.pl')
INSERT INTO people VALUES('Maja', 'Mazur', 'majamazur1380@email.pl')
INSERT INTO people VALUES('Anna', 'Mazur', 'annamazur3120@email.pl')
INSERT INTO people VALUES('Jakub', 'Wieczorek', 'jakubwieczorek1880@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Dudek', 'mikołajdudek9575@email.pl')
INSERT INTO people VALUES('Piotr', 'Wieczorek', 'piotrwieczorek4390@email.pl')
INSERT INTO people VALUES('Mateusz', 'Walczak', 'mateuszwalczak4719@email.pl')
INSERT INTO people VALUES('Nadia', 'Król', 'nadiakról4090@email.pl')
INSERT INTO people VALUES('Nikola', 'Wójcik', 'nikolawójcik6934@email.pl')
INSERT INTO people VALUES('Natalia', 'Walczak', 'nataliawalczak1210@email.pl')
INSERT INTO people VALUES('Nadia', 'Baran', 'nadiabaran9889@email.pl')
INSERT INTO people VALUES('Marcel', 'Zając', 'marcelzając8531@email.pl')
INSERT INTO people VALUES('Gabriela', 'Kaczmarek', 'gabrielakaczmarek4975@email.pl')
INSERT INTO people VALUES('Mateusz', 'Sikora', 'mateuszsikora3540@email.pl')
INSERT INTO people VALUES('Natalia', 'Michalak', 'nataliamichalak1878@email.pl')
INSERT INTO people VALUES('Lena', 'Baran', 'lenabaran4396@email.pl')
INSERT INTO people VALUES('Martyna', 'Wróbel', 'martynawróbel2594@email.pl')
INSERT INTO people VALUES('Aleksander', 'Wieczorek', 'aleksanderwieczorek133@email.pl')
INSERT INTO people VALUES('Natalia', 'Pawlak', 'nataliapawlak8134@email.pl')
INSERT INTO people VALUES('Maria', 'Kaczmarek', 'mariakaczmarek9695@email.pl')
INSERT INTO people VALUES('Gabriela', 'Woźniak', 'gabrielawoźniak3235@email.pl')
INSERT INTO people VALUES('Michał', 'Mazur', 'michałmazur2430@email.pl')
INSERT INTO people VALUES('Franciszek', 'Baran', 'franciszekbaran4903@email.pl')
INSERT INTO people VALUES('Natalia', 'Król', 'nataliakról5788@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Walczak', 'wiktoriawalczak6193@email.pl')
INSERT INTO people VALUES('Natalia', 'Szewczyk', 'nataliaszewczyk9968@email.pl')
INSERT INTO people VALUES('Natalia', 'Krawczk', 'nataliakrawczk3672@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Mazur', 'zuzannamazur5660@email.pl')
INSERT INTO people VALUES('Marcel', 'Pawlak', 'marcelpawlak6957@email.pl')
INSERT INTO people VALUES('Maja', 'Woźniak', 'majawoźniak5498@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Wieczorek', 'wiktoriawieczorek1700@email.pl')
INSERT INTO people VALUES('Jakub', 'Wójcik', 'jakubwójcik1814@email.pl')
INSERT INTO people VALUES('Marcel', 'Wróbel', 'marcelwróbel9730@email.pl')
INSERT INTO people VALUES('Alicja', 'Dudek', 'alicjadudek8545@email.pl')
INSERT INTO people VALUES('Lena', 'Adamczyk', 'lenaadamczyk4569@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Kaczmarek', 'zuzannakaczmarek3265@email.pl')
INSERT INTO people VALUES('Dawid', 'Krawczk', 'dawidkrawczk1447@email.pl')
INSERT INTO people VALUES('Julia', 'Kowalczyk', 'juliakowalczyk3515@email.pl')
INSERT INTO people VALUES('Oliwia', 'Krawczk', 'oliwiakrawczk8090@email.pl')
INSERT INTO people VALUES('Aleksander', 'Adamczyk', 'aleksanderadamczyk2031@email.pl')
INSERT INTO people VALUES('Martyna', 'Mazur', 'martynamazur7414@email.pl')
INSERT INTO people VALUES('Gabriela', 'Walczak', 'gabrielawalczak7413@email.pl')
INSERT INTO people VALUES('Igor', 'Walczak', 'igorwalczak1523@email.pl')
INSERT INTO people VALUES('Antoni', 'Zając', 'antonizając7553@email.pl')
INSERT INTO people VALUES('Jan', 'Adamczyk', 'janadamczyk4558@email.pl')
INSERT INTO people VALUES('Natalia', 'Krawczk', 'nataliakrawczk6543@email.pl')
INSERT INTO people VALUES('Kacper', 'Duda', 'kacperduda2895@email.pl')
INSERT INTO people VALUES('Wiktor', 'Walczak', 'wiktorwalczak4528@email.pl')
INSERT INTO people VALUES('Alicja', 'Krawczk', 'alicjakrawczk2766@email.pl')
INSERT INTO people VALUES('Julia', 'Nowak', 'julianowak9941@email.pl')
INSERT INTO people VALUES('Lena', 'Woźniak', 'lenawoźniak8063@email.pl')
INSERT INTO people VALUES('Hanna', 'Kaczmarek', 'hannakaczmarek9852@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Sikora', 'wiktoriasikora4556@email.pl')
INSERT INTO people VALUES('Aleksander', 'Wójcik', 'aleksanderwójcik7365@email.pl')
INSERT INTO people VALUES('Anna', 'Szewczyk', 'annaszewczyk6253@email.pl')
INSERT INTO people VALUES('Martyna', 'Duda', 'martynaduda8217@email.pl')
INSERT INTO people VALUES('Emilia', 'Pawlak', 'emiliapawlak4203@email.pl')
INSERT INTO people VALUES('Maja', 'Sikora', 'majasikora6529@email.pl')
INSERT INTO people VALUES('Igor', 'Wójcik', 'igorwójcik544@email.pl')
INSERT INTO people VALUES('Hanna', 'Krawczk', 'hannakrawczk9197@email.pl')
INSERT INTO people VALUES('Jakub', 'Kaczmarek', 'jakubkaczmarek5176@email.pl')
INSERT INTO people VALUES('Michał', 'Szewczyk', 'michałszewczyk4056@email.pl')
INSERT INTO people VALUES('Adam', 'Stępień', 'adamstępień1268@email.pl')
INSERT INTO people VALUES('Filip', 'Walczak', 'filipwalczak5695@email.pl')
INSERT INTO people VALUES('Emilia', 'Woźniak', 'emiliawoźniak5063@email.pl')
INSERT INTO people VALUES('Jakub', 'Król', 'jakubkról6868@email.pl')
INSERT INTO people VALUES('Emilia', 'Wójcik', 'emiliawójcik783@email.pl')
INSERT INTO people VALUES('Bartosz', 'Stępień', 'bartoszstępień199@email.pl')
INSERT INTO people VALUES('Kacper', 'Wieczorek', 'kacperwieczorek8872@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Wieczorek', 'wiktoriawieczorek3881@email.pl')
INSERT INTO people VALUES('Antonina', 'Mazur', 'antoninamazur6363@email.pl')
INSERT INTO people VALUES('Hanna', 'Król', 'hannakról8958@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Duda', 'wiktoriaduda2126@email.pl')
INSERT INTO people VALUES('Michał', 'Szewczyk', 'michałszewczyk6392@email.pl')
INSERT INTO people VALUES('Alicja', 'Michalak', 'alicjamichalak106@email.pl')
INSERT INTO people VALUES('Bartosz', 'Kowalczyk', 'bartoszkowalczyk9165@email.pl')
INSERT INTO people VALUES('Julia', 'Krawczk', 'juliakrawczk5823@email.pl')
INSERT INTO people VALUES('Alan', 'Sikora', 'alansikora7571@email.pl')
INSERT INTO people VALUES('Piotr', 'Pawlak', 'piotrpawlak3111@email.pl')
INSERT INTO people VALUES('Natalia', 'Wójcik', 'nataliawójcik8369@email.pl')
INSERT INTO people VALUES('Kacper', 'Sikora', 'kacpersikora4079@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Wójcik', 'zuzannawójcik233@email.pl')
INSERT INTO people VALUES('Wojciech', 'Duda', 'wojciechduda6681@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Stępień', 'mikołajstępień7597@email.pl')
INSERT INTO people VALUES('Jakub', 'Zając', 'jakubzając9429@email.pl')
INSERT INTO people VALUES('Piotr', 'Michalak', 'piotrmichalak7113@email.pl')
INSERT INTO people VALUES('Jan', 'Zając', 'janzając2529@email.pl')
INSERT INTO people VALUES('Marcel', 'Mazur', 'marcelmazur6588@email.pl')
INSERT INTO people VALUES('Aleksander', 'Stępień', 'aleksanderstępień6991@email.pl')
INSERT INTO people VALUES('Marcel', 'Stępień', 'marcelstępień570@email.pl')
INSERT INTO people VALUES('Lena', 'Woźniak', 'lenawoźniak3875@email.pl')
INSERT INTO people VALUES('Lena', 'Kowalczyk', 'lenakowalczyk1173@email.pl')
INSERT INTO people VALUES('Natalia', 'Walczak', 'nataliawalczak8478@email.pl')
INSERT INTO people VALUES('Hanna', 'Wróbel', 'hannawróbel8624@email.pl')
INSERT INTO people VALUES('Amelia', 'Wójcik', 'ameliawójcik8711@email.pl')
INSERT INTO people VALUES('Zofia', 'Baran', 'zofiabaran5840@email.pl')
INSERT INTO people VALUES('Aleksander', 'Wieczorek', 'aleksanderwieczorek8168@email.pl')
INSERT INTO people VALUES('Alicja', 'Michalak', 'alicjamichalak9155@email.pl')
INSERT INTO people VALUES('Martyna', 'Duda', 'martynaduda4392@email.pl')
INSERT INTO people VALUES('Wiktor', 'Wieczorek', 'wiktorwieczorek6506@email.pl')
INSERT INTO people VALUES('Franciszek', 'Zając', 'franciszekzając2869@email.pl')
INSERT INTO people VALUES('Adam', 'Wieczorek', 'adamwieczorek225@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Szewczyk', 'aleksandraszewczyk2021@email.pl')
INSERT INTO people VALUES('Piotr', 'Baran', 'piotrbaran3850@email.pl')
INSERT INTO people VALUES('Kacper', 'Wróbel', 'kacperwróbel4655@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Król', 'zuzannakról5127@email.pl')
INSERT INTO people VALUES('Adam', 'Król', 'adamkról1350@email.pl')
INSERT INTO people VALUES('Szymon', 'Szewczyk', 'szymonszewczyk6185@email.pl')
INSERT INTO people VALUES('Alan', 'Kaczmarek', 'alankaczmarek4998@email.pl')
INSERT INTO people VALUES('Bartosz', 'Duda', 'bartoszduda8515@email.pl')
INSERT INTO people VALUES('Michał', 'Walczak', 'michałwalczak6159@email.pl')
INSERT INTO people VALUES('Adam', 'Dudek', 'adamdudek3736@email.pl')
INSERT INTO people VALUES('Alan', 'Stępień', 'alanstępień7009@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Baran', 'aleksandrabaran7489@email.pl')
INSERT INTO people VALUES('Martyna', 'Wróbel', 'martynawróbel2084@email.pl')
INSERT INTO people VALUES('Marcel', 'Wieczorek', 'marcelwieczorek6066@email.pl')
INSERT INTO people VALUES('Bartosz', 'Krawczk', 'bartoszkrawczk5459@email.pl')
INSERT INTO people VALUES('Piotr', 'Michalak', 'piotrmichalak3764@email.pl')
INSERT INTO people VALUES('Bartosz', 'Dudek', 'bartoszdudek2003@email.pl')
INSERT INTO people VALUES('Lena', 'Wójcik', 'lenawójcik4672@email.pl')
INSERT INTO people VALUES('Antoni', 'Kaczmarek', 'antonikaczmarek6951@email.pl')
INSERT INTO people VALUES('Wojciech', 'Duda', 'wojciechduda215@email.pl')
INSERT INTO people VALUES('Antonina', 'Wójcik', 'antoninawójcik4351@email.pl')
INSERT INTO people VALUES('Aleksander', 'Dudek', 'aleksanderdudek7432@email.pl')
INSERT INTO people VALUES('Franciszek', 'Sikora', 'franciszeksikora2535@email.pl')
INSERT INTO people VALUES('Oliwia', 'Stępień', 'oliwiastępień8034@email.pl')
INSERT INTO people VALUES('Mateusz', 'Szewczyk', 'mateuszszewczyk4257@email.pl')
INSERT INTO people VALUES('Lena', 'Sikora', 'lenasikora8546@email.pl')
INSERT INTO people VALUES('Hanna', 'Kaczmarek', 'hannakaczmarek3933@email.pl')
INSERT INTO people VALUES('Igor', 'Kowalczyk', 'igorkowalczyk9589@email.pl')
INSERT INTO people VALUES('Aleksander', 'Zając', 'aleksanderzając3325@email.pl')
INSERT INTO people VALUES('Adam', 'Sikora', 'adamsikora1743@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Walczak', 'zuzannawalczak2291@email.pl')
INSERT INTO people VALUES('Wojciech', 'Michalak', 'wojciechmichalak8194@email.pl')
INSERT INTO people VALUES('Alan', 'Szewczyk', 'alanszewczyk3558@email.pl')
INSERT INTO people VALUES('Bartosz', 'Michalak', 'bartoszmichalak7263@email.pl')
INSERT INTO people VALUES('Gabriela', 'Nowak', 'gabrielanowak1872@email.pl')
INSERT INTO people VALUES('Emilia', 'Woźniak', 'emiliawoźniak8808@email.pl')
INSERT INTO people VALUES('Igor', 'Szewczyk', 'igorszewczyk4014@email.pl')
INSERT INTO people VALUES('Wiktor', 'Pawlak', 'wiktorpawlak6741@email.pl')
INSERT INTO people VALUES('Emilia', 'Nowak', 'emilianowak850@email.pl')
INSERT INTO people VALUES('Marcel', 'Dudek', 'marceldudek8592@email.pl')
INSERT INTO people VALUES('Bartosz', 'Krawczk', 'bartoszkrawczk9332@email.pl')
INSERT INTO people VALUES('Marcel', 'Krawczk', 'marcelkrawczk2545@email.pl')
INSERT INTO people VALUES('Adam', 'Duda', 'adamduda7450@email.pl')
INSERT INTO people VALUES('Wiktor', 'Nowak', 'wiktornowak5031@email.pl')
INSERT INTO people VALUES('Maria', 'Pawlak', 'mariapawlak9642@email.pl')
INSERT INTO people VALUES('Wojciech', 'Wróbel', 'wojciechwróbel697@email.pl')
INSERT INTO people VALUES('Anna', 'Szewczyk', 'annaszewczyk7486@email.pl')
INSERT INTO people VALUES('Bartosz', 'Zając', 'bartoszzając904@email.pl')
INSERT INTO people VALUES('Wiktor', 'Szewczyk', 'wiktorszewczyk6174@email.pl')
INSERT INTO people VALUES('Wojciech', 'Baran', 'wojciechbaran1901@email.pl')
INSERT INTO people VALUES('Szymon', 'Sikora', 'szymonsikora9655@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Duda', 'zuzannaduda8486@email.pl')
INSERT INTO people VALUES('Gabriela', 'Duda', 'gabrieladuda7516@email.pl')
INSERT INTO people VALUES('Maria', 'Król', 'mariakról1444@email.pl')
INSERT INTO people VALUES('Franciszek', 'Krawczk', 'franciszekkrawczk3838@email.pl')
INSERT INTO people VALUES('Wojciech', 'Michalak', 'wojciechmichalak4940@email.pl')
INSERT INTO people VALUES('Gabriela', 'Walczak', 'gabrielawalczak3096@email.pl')
INSERT INTO people VALUES('Gabriela', 'Stępień', 'gabrielastępień7784@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Krawczk', 'wiktoriakrawczk5814@email.pl')
INSERT INTO people VALUES('Franciszek', 'Baran', 'franciszekbaran4479@email.pl')
INSERT INTO people VALUES('Jan', 'Mazur', 'janmazur5989@email.pl')
INSERT INTO people VALUES('Alicja', 'Szewczyk', 'alicjaszewczyk2157@email.pl')
INSERT INTO people VALUES('Adam', 'Adamczyk', 'adamadamczyk5538@email.pl')
INSERT INTO people VALUES('Szymon', 'Adamczyk', 'szymonadamczyk4851@email.pl')
INSERT INTO people VALUES('Natalia', 'Kowalczyk', 'nataliakowalczyk6037@email.pl')
INSERT INTO people VALUES('Maria', 'Wójcik', 'mariawójcik5575@email.pl')
INSERT INTO people VALUES('Gabriela', 'Pawlak', 'gabrielapawlak2398@email.pl')
INSERT INTO people VALUES('Amelia', 'Wieczorek', 'ameliawieczorek8622@email.pl')
INSERT INTO people VALUES('Martyna', 'Woźniak', 'martynawoźniak1890@email.pl')
INSERT INTO people VALUES('Maja', 'Duda', 'majaduda4062@email.pl')
INSERT INTO people VALUES('Zofia', 'Wieczorek', 'zofiawieczorek6141@email.pl')
INSERT INTO people VALUES('Franciszek', 'Kaczmarek', 'franciszekkaczmarek9792@email.pl')
INSERT INTO people VALUES('Piotr', 'Walczak', 'piotrwalczak6250@email.pl')
INSERT INTO people VALUES('Nadia', 'Baran', 'nadiabaran1798@email.pl')
INSERT INTO people VALUES('Aleksander', 'Wieczorek', 'aleksanderwieczorek7634@email.pl')
INSERT INTO people VALUES('Kacper', 'Krawczk', 'kacperkrawczk8620@email.pl')
INSERT INTO people VALUES('Maria', 'Wójcik', 'mariawójcik6463@email.pl')
INSERT INTO people VALUES('Antoni', 'Krawczk', 'antonikrawczk5397@email.pl')
INSERT INTO people VALUES('Anna', 'Duda', 'annaduda9539@email.pl')
INSERT INTO people VALUES('Mateusz', 'Wieczorek', 'mateuszwieczorek9587@email.pl')
INSERT INTO people VALUES('Adam', 'Król', 'adamkról7593@email.pl')
INSERT INTO people VALUES('Dawid', 'Baran', 'dawidbaran3565@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Wójcik', 'wiktoriawójcik6464@email.pl')
INSERT INTO people VALUES('Michał', 'Stępień', 'michałstępień7269@email.pl')
INSERT INTO people VALUES('Nadia', 'Walczak', 'nadiawalczak2037@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Sikora', 'mikołajsikora4683@email.pl')
INSERT INTO people VALUES('Jakub', 'Wieczorek', 'jakubwieczorek3197@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Pawlak', 'wiktoriapawlak4725@email.pl')
INSERT INTO people VALUES('Natalia', 'Kaczmarek', 'nataliakaczmarek2318@email.pl')
INSERT INTO people VALUES('Oliwia', 'Wieczorek', 'oliwiawieczorek207@email.pl')
INSERT INTO people VALUES('Piotr', 'Zając', 'piotrzając2872@email.pl')
INSERT INTO people VALUES('Jan', 'Wójcik', 'janwójcik3666@email.pl')
INSERT INTO people VALUES('Filip', 'Michalak', 'filipmichalak5781@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Wieczorek', 'mikołajwieczorek9300@email.pl')
INSERT INTO people VALUES('Emilia', 'Mazur', 'emiliamazur4778@email.pl')
INSERT INTO people VALUES('Franciszek', 'Wróbel', 'franciszekwróbel3624@email.pl')
INSERT INTO people VALUES('Marcel', 'Adamczyk', 'marceladamczyk5682@email.pl')
INSERT INTO people VALUES('Marcel', 'Wróbel', 'marcelwróbel3478@email.pl')
INSERT INTO people VALUES('Oliwia', 'Krawczk', 'oliwiakrawczk6809@email.pl')
INSERT INTO people VALUES('Filip', 'Kowalczyk', 'filipkowalczyk1918@email.pl')
INSERT INTO people VALUES('Jan', 'Baran', 'janbaran5353@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Dudek', 'wiktoriadudek3831@email.pl')
INSERT INTO people VALUES('Dawid', 'Sikora', 'dawidsikora5021@email.pl')
INSERT INTO people VALUES('Alan', 'Krawczk', 'alankrawczk8802@email.pl')
INSERT INTO people VALUES('Igor', 'Duda', 'igorduda9786@email.pl')
INSERT INTO people VALUES('Maria', 'Dudek', 'mariadudek5581@email.pl')
INSERT INTO people VALUES('Nadia', 'Pawlak', 'nadiapawlak1713@email.pl')
INSERT INTO people VALUES('Martyna', 'Sikora', 'martynasikora4485@email.pl')
INSERT INTO people VALUES('Kacper', 'Woźniak', 'kacperwoźniak7271@email.pl')
INSERT INTO people VALUES('Maja', 'Duda', 'majaduda4503@email.pl')
INSERT INTO people VALUES('Mateusz', 'Szewczyk', 'mateuszszewczyk6827@email.pl')
INSERT INTO people VALUES('Igor', 'Sikora', 'igorsikora6684@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Kowalczyk', 'aleksandrakowalczyk643@email.pl')
INSERT INTO people VALUES('Franciszek', 'Pawlak', 'franciszekpawlak7090@email.pl')
INSERT INTO people VALUES('Kacper', 'Duda', 'kacperduda6130@email.pl')
INSERT INTO people VALUES('Julia', 'Nowak', 'julianowak5681@email.pl')
INSERT INTO people VALUES('Jakub', 'Szewczyk', 'jakubszewczyk8272@email.pl')
INSERT INTO people VALUES('Antonina', 'Walczak', 'antoninawalczak6740@email.pl')
INSERT INTO people VALUES('Mateusz', 'Nowak', 'mateusznowak8065@email.pl')
INSERT INTO people VALUES('Jan', 'Wieczorek', 'janwieczorek263@email.pl')
INSERT INTO people VALUES('Antonina', 'Dudek', 'antoninadudek3509@email.pl')
INSERT INTO people VALUES('Lena', 'Dudek', 'lenadudek7689@email.pl')
INSERT INTO people VALUES('Antoni', 'Mazur', 'antonimazur2118@email.pl')
INSERT INTO people VALUES('Filip', 'Nowak', 'filipnowak5481@email.pl')
INSERT INTO people VALUES('Martyna', 'Kaczmarek', 'martynakaczmarek6354@email.pl')
INSERT INTO people VALUES('Filip', 'Michalak', 'filipmichalak7734@email.pl')
INSERT INTO people VALUES('Antoni', 'Wójcik', 'antoniwójcik3901@email.pl')
INSERT INTO people VALUES('Jakub', 'Nowak', 'jakubnowak9797@email.pl')
INSERT INTO people VALUES('Anna', 'Szewczyk', 'annaszewczyk9546@email.pl')
INSERT INTO people VALUES('Alan', 'Adamczyk', 'alanadamczyk9911@email.pl')
INSERT INTO people VALUES('Igor', 'Duda', 'igorduda5027@email.pl')
INSERT INTO people VALUES('Zofia', 'Dudek', 'zofiadudek1891@email.pl')
INSERT INTO people VALUES('Franciszek', 'Stępień', 'franciszekstępień1646@email.pl')
INSERT INTO people VALUES('Aleksander', 'Wróbel', 'aleksanderwróbel1078@email.pl')
INSERT INTO people VALUES('Anna', 'Zając', 'annazając2493@email.pl')
INSERT INTO people VALUES('Amelia', 'Walczak', 'ameliawalczak2211@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Baran', 'aleksandrabaran5706@email.pl')
INSERT INTO people VALUES('Maja', 'Pawlak', 'majapawlak7919@email.pl')
INSERT INTO people VALUES('Kacper', 'Nowak', 'kacpernowak9431@email.pl')
INSERT INTO people VALUES('Franciszek', 'Nowak', 'franciszeknowak6645@email.pl')
INSERT INTO people VALUES('Emilia', 'Woźniak', 'emiliawoźniak9773@email.pl')
INSERT INTO people VALUES('Anna', 'Woźniak', 'annawoźniak5616@email.pl')
INSERT INTO people VALUES('Nadia', 'Wieczorek', 'nadiawieczorek5757@email.pl')
INSERT INTO people VALUES('Adam', 'Sikora', 'adamsikora4834@email.pl')
INSERT INTO people VALUES('Lena', 'Wróbel', 'lenawróbel9084@email.pl')
INSERT INTO people VALUES('Wojciech', 'Adamczyk', 'wojciechadamczyk1011@email.pl')
INSERT INTO people VALUES('Antonina', 'Kaczmarek', 'antoninakaczmarek2545@email.pl')
INSERT INTO people VALUES('Nadia', 'Nowak', 'nadianowak3843@email.pl')
INSERT INTO people VALUES('Aleksander', 'Adamczyk', 'aleksanderadamczyk6561@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Szewczyk', 'mikołajszewczyk8563@email.pl')
INSERT INTO people VALUES('Gabriela', 'Wójcik', 'gabrielawójcik2955@email.pl')
INSERT INTO people VALUES('Michał', 'Dudek', 'michałdudek7021@email.pl')
INSERT INTO people VALUES('Kacper', 'Król', 'kacperkról6000@email.pl')
INSERT INTO people VALUES('Hanna', 'Baran', 'hannabaran8445@email.pl')
INSERT INTO people VALUES('Wojciech', 'Sikora', 'wojciechsikora8416@email.pl')
INSERT INTO people VALUES('Marcel', 'Duda', 'marcelduda1924@email.pl')
INSERT INTO people VALUES('Antoni', 'Walczak', 'antoniwalczak5262@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Szewczyk', 'aleksandraszewczyk68@email.pl')
INSERT INTO people VALUES('Piotr', 'Adamczyk', 'piotradamczyk6355@email.pl')
INSERT INTO people VALUES('Maria', 'Zając', 'mariazając2198@email.pl')
INSERT INTO people VALUES('Antoni', 'Szewczyk', 'antoniszewczyk8384@email.pl')
INSERT INTO people VALUES('Piotr', 'Adamczyk', 'piotradamczyk4972@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Wieczorek', 'aleksandrawieczorek3150@email.pl')
INSERT INTO people VALUES('Kacper', 'Pawlak', 'kacperpawlak9351@email.pl')
INSERT INTO people VALUES('Zofia', 'Sikora', 'zofiasikora8978@email.pl')
INSERT INTO people VALUES('Igor', 'Wójcik', 'igorwójcik1299@email.pl')
INSERT INTO people VALUES('Mateusz', 'Kaczmarek', 'mateuszkaczmarek8422@email.pl')
INSERT INTO people VALUES('Nadia', 'Kowalczyk', 'nadiakowalczyk9998@email.pl')
INSERT INTO people VALUES('Natalia', 'Krawczk', 'nataliakrawczk5012@email.pl')
INSERT INTO people VALUES('Marcel', 'Król', 'marcelkról2439@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Król', 'aleksandrakról1145@email.pl')
INSERT INTO people VALUES('Maja', 'Nowak', 'majanowak7877@email.pl')
INSERT INTO people VALUES('Adam', 'Duda', 'adamduda6579@email.pl')
INSERT INTO people VALUES('Jakub', 'Szewczyk', 'jakubszewczyk7998@email.pl')
INSERT INTO people VALUES('Julia', 'Kowalczyk', 'juliakowalczyk6338@email.pl')
INSERT INTO people VALUES('Igor', 'Kaczmarek', 'igorkaczmarek9173@email.pl')
INSERT INTO people VALUES('Piotr', 'Michalak', 'piotrmichalak2277@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Woźniak', 'wiktoriawoźniak4643@email.pl')
INSERT INTO people VALUES('Dawid', 'Stępień', 'dawidstępień481@email.pl')
INSERT INTO people VALUES('Hanna', 'Michalak', 'hannamichalak3138@email.pl')
INSERT INTO people VALUES('Jan', 'Mazur', 'janmazur8489@email.pl')
INSERT INTO people VALUES('Szymon', 'Baran', 'szymonbaran6075@email.pl')
INSERT INTO people VALUES('Franciszek', 'Zając', 'franciszekzając9000@email.pl')
INSERT INTO people VALUES('Hanna', 'Kowalczyk', 'hannakowalczyk9058@email.pl')
INSERT INTO people VALUES('Amelia', 'Duda', 'ameliaduda2448@email.pl')
INSERT INTO people VALUES('Antonina', 'Szewczyk', 'antoninaszewczyk6225@email.pl')
INSERT INTO people VALUES('Jan', 'Baran', 'janbaran268@email.pl')
INSERT INTO people VALUES('Maria', 'Kowalczyk', 'mariakowalczyk3994@email.pl')
INSERT INTO people VALUES('Aleksander', 'Szewczyk', 'aleksanderszewczyk7941@email.pl')
INSERT INTO people VALUES('Zofia', 'Zając', 'zofiazając6801@email.pl')
INSERT INTO people VALUES('Maria', 'Zając', 'mariazając1772@email.pl')
INSERT INTO people VALUES('Nadia', 'Duda', 'nadiaduda3077@email.pl')
INSERT INTO people VALUES('Wojciech', 'Wróbel', 'wojciechwróbel2208@email.pl')
INSERT INTO people VALUES('Franciszek', 'Duda', 'franciszekduda2675@email.pl')
INSERT INTO people VALUES('Adam', 'Wróbel', 'adamwróbel2050@email.pl')
INSERT INTO people VALUES('Gabriela', 'Wieczorek', 'gabrielawieczorek179@email.pl')
INSERT INTO people VALUES('Adam', 'Pawlak', 'adampawlak541@email.pl')
INSERT INTO people VALUES('Aleksander', 'Stępień', 'aleksanderstępień667@email.pl')
INSERT INTO people VALUES('Bartosz', 'Sikora', 'bartoszsikora2834@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Wójcik', 'mikołajwójcik4766@email.pl')
INSERT INTO people VALUES('Igor', 'Wójcik', 'igorwójcik7747@email.pl')
INSERT INTO people VALUES('Maria', 'Kaczmarek', 'mariakaczmarek3988@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Walczak', 'aleksandrawalczak4671@email.pl')
INSERT INTO people VALUES('Lena', 'Zając', 'lenazając7471@email.pl')
INSERT INTO people VALUES('Michał', 'Wójcik', 'michałwójcik5783@email.pl')
INSERT INTO people VALUES('Wojciech', 'Sikora', 'wojciechsikora1853@email.pl')
INSERT INTO people VALUES('Adam', 'Walczak', 'adamwalczak8116@email.pl')
INSERT INTO people VALUES('Alicja', 'Baran', 'alicjabaran3935@email.pl')
INSERT INTO people VALUES('Alicja', 'Stępień', 'alicjastępień8103@email.pl')
INSERT INTO people VALUES('Antoni', 'Kowalczyk', 'antonikowalczyk3217@email.pl')
INSERT INTO people VALUES('Maria', 'Duda', 'mariaduda6618@email.pl')
INSERT INTO people VALUES('Jakub', 'Woźniak', 'jakubwoźniak2963@email.pl')
INSERT INTO people VALUES('Oliwia', 'Krawczk', 'oliwiakrawczk1062@email.pl')
INSERT INTO people VALUES('Kacper', 'Król', 'kacperkról5745@email.pl')
INSERT INTO people VALUES('Anna', 'Michalak', 'annamichalak8036@email.pl')
INSERT INTO people VALUES('Jan', 'Dudek', 'jandudek5551@email.pl')
INSERT INTO people VALUES('Marcel', 'Duda', 'marcelduda5862@email.pl')
INSERT INTO people VALUES('Szymon', 'Nowak', 'szymonnowak6020@email.pl')
INSERT INTO people VALUES('Michał', 'Stępień', 'michałstępień9094@email.pl')
INSERT INTO people VALUES('Jan', 'Kaczmarek', 'jankaczmarek1187@email.pl')
INSERT INTO people VALUES('Gabriela', 'Duda', 'gabrieladuda1818@email.pl')
INSERT INTO people VALUES('Aleksander', 'Stępień', 'aleksanderstępień6093@email.pl')
INSERT INTO people VALUES('Antonina', 'Adamczyk', 'antoninaadamczyk7639@email.pl')
INSERT INTO people VALUES('Kacper', 'Wójcik', 'kacperwójcik4855@email.pl')
INSERT INTO people VALUES('Wiktor', 'Sikora', 'wiktorsikora5514@email.pl')
INSERT INTO people VALUES('Jan', 'Król', 'jankról2604@email.pl')
INSERT INTO people VALUES('Oliwia', 'Pawlak', 'oliwiapawlak2900@email.pl')
INSERT INTO people VALUES('Adam', 'Walczak', 'adamwalczak9662@email.pl')
INSERT INTO people VALUES('Emilia', 'Szewczyk', 'emiliaszewczyk4808@email.pl')
INSERT INTO people VALUES('Bartosz', 'Wróbel', 'bartoszwróbel6388@email.pl')
INSERT INTO people VALUES('Alicja', 'Duda', 'alicjaduda4734@email.pl')
INSERT INTO people VALUES('Oliwia', 'Wieczorek', 'oliwiawieczorek3315@email.pl')
INSERT INTO people VALUES('Amelia', 'Król', 'ameliakról6851@email.pl')
INSERT INTO people VALUES('Martyna', 'Kaczmarek', 'martynakaczmarek3827@email.pl')
INSERT INTO people VALUES('Martyna', 'Krawczk', 'martynakrawczk6522@email.pl')
INSERT INTO people VALUES('Bartosz', 'Król', 'bartoszkról30@email.pl')
INSERT INTO people VALUES('Emilia', 'Sikora', 'emiliasikora4693@email.pl')
INSERT INTO people VALUES('Jan', 'Michalak', 'janmichalak3370@email.pl')
INSERT INTO people VALUES('Antoni', 'Baran', 'antonibaran9935@email.pl')
INSERT INTO people VALUES('Bartosz', 'Stępień', 'bartoszstępień2784@email.pl')
INSERT INTO people VALUES('Piotr', 'Kowalczyk', 'piotrkowalczyk9869@email.pl')
INSERT INTO people VALUES('Lena', 'Krawczk', 'lenakrawczk1788@email.pl')
INSERT INTO people VALUES('Lena', 'Duda', 'lenaduda3912@email.pl')
INSERT INTO people VALUES('Filip', 'Stępień', 'filipstępień4004@email.pl')
INSERT INTO people VALUES('Zofia', 'Król', 'zofiakról1810@email.pl')
INSERT INTO people VALUES('Adam', 'Woźniak', 'adamwoźniak5005@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Wróbel', 'zuzannawróbel9037@email.pl')
INSERT INTO people VALUES('Adam', 'Wróbel', 'adamwróbel9230@email.pl')
INSERT INTO people VALUES('Amelia', 'Kaczmarek', 'ameliakaczmarek8750@email.pl')
INSERT INTO people VALUES('Alicja', 'Michalak', 'alicjamichalak8185@email.pl')
INSERT INTO people VALUES('Zofia', 'Zając', 'zofiazając1304@email.pl')
INSERT INTO people VALUES('Gabriela', 'Wieczorek', 'gabrielawieczorek7751@email.pl')
INSERT INTO people VALUES('Mateusz', 'Nowak', 'mateusznowak7065@email.pl')
INSERT INTO people VALUES('Bartosz', 'Baran', 'bartoszbaran4471@email.pl')
INSERT INTO people VALUES('Lena', 'Szewczyk', 'lenaszewczyk1217@email.pl')
INSERT INTO people VALUES('Natalia', 'Wójcik', 'nataliawójcik6166@email.pl')
INSERT INTO people VALUES('Wojciech', 'Kowalczyk', 'wojciechkowalczyk1954@email.pl')
INSERT INTO people VALUES('Michał', 'Mazur', 'michałmazur2536@email.pl')
INSERT INTO people VALUES('Mateusz', 'Kowalczyk', 'mateuszkowalczyk5181@email.pl')
INSERT INTO people VALUES('Jan', 'Baran', 'janbaran3529@email.pl')
INSERT INTO people VALUES('Nadia', 'Kowalczyk', 'nadiakowalczyk7507@email.pl')
INSERT INTO people VALUES('Hanna', 'Zając', 'hannazając2785@email.pl')
INSERT INTO people VALUES('Bartosz', 'Baran', 'bartoszbaran7870@email.pl')
INSERT INTO people VALUES('Nadia', 'Adamczyk', 'nadiaadamczyk8282@email.pl')
INSERT INTO people VALUES('Mateusz', 'Nowak', 'mateusznowak8320@email.pl')
INSERT INTO people VALUES('Filip', 'Adamczyk', 'filipadamczyk2288@email.pl')
INSERT INTO people VALUES('Michał', 'Dudek', 'michałdudek2593@email.pl')
INSERT INTO people VALUES('Amelia', 'Sikora', 'ameliasikora9113@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Kaczmarek', 'zuzannakaczmarek6164@email.pl')
INSERT INTO people VALUES('Marcel', 'Duda', 'marcelduda1151@email.pl')
INSERT INTO people VALUES('Adam', 'Wieczorek', 'adamwieczorek8367@email.pl')
INSERT INTO people VALUES('Marcel', 'Krawczk', 'marcelkrawczk6711@email.pl')
INSERT INTO people VALUES('Emilia', 'Adamczyk', 'emiliaadamczyk6732@email.pl')
INSERT INTO people VALUES('Bartosz', 'Krawczk', 'bartoszkrawczk2484@email.pl')
INSERT INTO people VALUES('Filip', 'Walczak', 'filipwalczak139@email.pl')
INSERT INTO people VALUES('Alan', 'Kaczmarek', 'alankaczmarek9295@email.pl')
INSERT INTO people VALUES('Emilia', 'Wróbel', 'emiliawróbel8838@email.pl')
INSERT INTO people VALUES('Mateusz', 'Wróbel', 'mateuszwróbel3166@email.pl')
INSERT INTO people VALUES('Jan', 'Zając', 'janzając3947@email.pl')
INSERT INTO people VALUES('Franciszek', 'Sikora', 'franciszeksikora4675@email.pl')
INSERT INTO people VALUES('Amelia', 'Sikora', 'ameliasikora2197@email.pl')
INSERT INTO people VALUES('Marcel', 'Szewczyk', 'marcelszewczyk4502@email.pl')
INSERT INTO people VALUES('Szymon', 'Szewczyk', 'szymonszewczyk9723@email.pl')
INSERT INTO people VALUES('Alan', 'Zając', 'alanzając3576@email.pl')
INSERT INTO people VALUES('Lena', 'Sikora', 'lenasikora4543@email.pl')
INSERT INTO people VALUES('Michał', 'Kowalczyk', 'michałkowalczyk5808@email.pl')
INSERT INTO people VALUES('Zofia', 'Wójcik', 'zofiawójcik8473@email.pl')
INSERT INTO people VALUES('Julia', 'Król', 'juliakról5127@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Wróbel', 'aleksandrawróbel928@email.pl')
INSERT INTO people VALUES('Alicja', 'Dudek', 'alicjadudek8561@email.pl')
INSERT INTO people VALUES('Piotr', 'Adamczyk', 'piotradamczyk1904@email.pl')
INSERT INTO people VALUES('Kacper', 'Woźniak', 'kacperwoźniak186@email.pl')
INSERT INTO people VALUES('Maja', 'Sikora', 'majasikora6927@email.pl')
INSERT INTO people VALUES('Bartosz', 'Zając', 'bartoszzając3511@email.pl')
INSERT INTO people VALUES('Marcel', 'Mazur', 'marcelmazur3938@email.pl')
INSERT INTO people VALUES('Bartosz', 'Wróbel', 'bartoszwróbel6732@email.pl')
INSERT INTO people VALUES('Gabriela', 'Wieczorek', 'gabrielawieczorek5566@email.pl')
INSERT INTO people VALUES('Piotr', 'Michalak', 'piotrmichalak4132@email.pl')
INSERT INTO people VALUES('Marcel', 'Stępień', 'marcelstępień3035@email.pl')
INSERT INTO people VALUES('Jakub', 'Stępień', 'jakubstępień8140@email.pl')
INSERT INTO people VALUES('Amelia', 'Wieczorek', 'ameliawieczorek8917@email.pl')
INSERT INTO people VALUES('Maja', 'Michalak', 'majamichalak6856@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Dudek', 'zuzannadudek243@email.pl')
INSERT INTO people VALUES('Nikola', 'Król', 'nikolakról542@email.pl')
INSERT INTO people VALUES('Amelia', 'Pawlak', 'ameliapawlak3319@email.pl')
INSERT INTO people VALUES('Franciszek', 'Wójcik', 'franciszekwójcik6938@email.pl')
INSERT INTO people VALUES('Kacper', 'Wieczorek', 'kacperwieczorek6998@email.pl')
INSERT INTO people VALUES('Antoni', 'Adamczyk', 'antoniadamczyk1351@email.pl')
INSERT INTO people VALUES('Lena', 'Wójcik', 'lenawójcik7155@email.pl')
INSERT INTO people VALUES('Dawid', 'Michalak', 'dawidmichalak5131@email.pl')
INSERT INTO people VALUES('Michał', 'Michalak', 'michałmichalak4822@email.pl')
INSERT INTO people VALUES('Franciszek', 'Wójcik', 'franciszekwójcik4644@email.pl')
INSERT INTO people VALUES('Wojciech', 'Zając', 'wojciechzając1693@email.pl')
INSERT INTO people VALUES('Hanna', 'Sikora', 'hannasikora2244@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Krawczk', 'wiktoriakrawczk9215@email.pl')
INSERT INTO people VALUES('Anna', 'Wróbel', 'annawróbel1545@email.pl')
INSERT INTO people VALUES('Gabriela', 'Szewczyk', 'gabrielaszewczyk5775@email.pl')
INSERT INTO people VALUES('Nadia', 'Walczak', 'nadiawalczak6876@email.pl')
INSERT INTO people VALUES('Dawid', 'Michalak', 'dawidmichalak8314@email.pl')
INSERT INTO people VALUES('Nikola', 'Król', 'nikolakról7283@email.pl')
INSERT INTO people VALUES('Kacper', 'Wieczorek', 'kacperwieczorek8422@email.pl')
INSERT INTO people VALUES('Kacper', 'Dudek', 'kacperdudek3865@email.pl')
INSERT INTO people VALUES('Bartosz', 'Duda', 'bartoszduda1362@email.pl')
INSERT INTO people VALUES('Marcel', 'Walczak', 'marcelwalczak4850@email.pl')
INSERT INTO people VALUES('Amelia', 'Nowak', 'amelianowak3313@email.pl')
INSERT INTO people VALUES('Oliwia', 'Baran', 'oliwiabaran2927@email.pl')
INSERT INTO people VALUES('Alan', 'Król', 'alankról2455@email.pl')
INSERT INTO people VALUES('Wojciech', 'Krawczk', 'wojciechkrawczk7680@email.pl')
INSERT INTO people VALUES('Hanna', 'Duda', 'hannaduda1803@email.pl')
INSERT INTO people VALUES('Julia', 'Baran', 'juliabaran3370@email.pl')
INSERT INTO people VALUES('Alan', 'Adamczyk', 'alanadamczyk4630@email.pl')
INSERT INTO people VALUES('Lena', 'Walczak', 'lenawalczak4986@email.pl')
INSERT INTO people VALUES('Igor', 'Michalak', 'igormichalak6653@email.pl')
INSERT INTO people VALUES('Antonina', 'Nowak', 'antoninanowak2371@email.pl')
INSERT INTO people VALUES('Mateusz', 'Walczak', 'mateuszwalczak3788@email.pl')
INSERT INTO people VALUES('Alan', 'Stępień', 'alanstępień450@email.pl')
INSERT INTO people VALUES('Wojciech', 'Baran', 'wojciechbaran2845@email.pl')
INSERT INTO people VALUES('Nikola', 'Pawlak', 'nikolapawlak8020@email.pl')
INSERT INTO people VALUES('Oliwia', 'Zając', 'oliwiazając811@email.pl')
INSERT INTO people VALUES('Piotr', 'Michalak', 'piotrmichalak7504@email.pl')
INSERT INTO people VALUES('Wojciech', 'Sikora', 'wojciechsikora2470@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Kaczmarek', 'aleksandrakaczmarek8731@email.pl')
INSERT INTO people VALUES('Gabriela', 'Dudek', 'gabrieladudek1601@email.pl')
INSERT INTO people VALUES('Julia', 'Baran', 'juliabaran9625@email.pl')
INSERT INTO people VALUES('Aleksander', 'Woźniak', 'aleksanderwoźniak9468@email.pl')
INSERT INTO people VALUES('Jan', 'Wójcik', 'janwójcik9560@email.pl')
INSERT INTO people VALUES('Oliwia', 'Wójcik', 'oliwiawójcik333@email.pl')
INSERT INTO people VALUES('Nikola', 'Adamczyk', 'nikolaadamczyk824@email.pl')
INSERT INTO people VALUES('Filip', 'Pawlak', 'filippawlak8837@email.pl')
INSERT INTO people VALUES('Amelia', 'Zając', 'ameliazając3517@email.pl')
INSERT INTO people VALUES('Antoni', 'Sikora', 'antonisikora9579@email.pl')
INSERT INTO people VALUES('Aleksander', 'Wójcik', 'aleksanderwójcik6143@email.pl')
INSERT INTO people VALUES('Hanna', 'Baran', 'hannabaran8733@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Pawlak', 'mikołajpawlak4855@email.pl')
INSERT INTO people VALUES('Maria', 'Baran', 'mariabaran4147@email.pl')
INSERT INTO people VALUES('Nadia', 'Wieczorek', 'nadiawieczorek9343@email.pl')
INSERT INTO people VALUES('Anna', 'Kowalczyk', 'annakowalczyk3618@email.pl')
INSERT INTO people VALUES('Michał', 'Wróbel', 'michałwróbel374@email.pl')
INSERT INTO people VALUES('Nadia', 'Dudek', 'nadiadudek6049@email.pl')
INSERT INTO people VALUES('Jan', 'Michalak', 'janmichalak7888@email.pl')
INSERT INTO people VALUES('Natalia', 'Krawczk', 'nataliakrawczk4137@email.pl')
INSERT INTO people VALUES('Filip', 'Woźniak', 'filipwoźniak3876@email.pl')
INSERT INTO people VALUES('Maria', 'Adamczyk', 'mariaadamczyk479@email.pl')
INSERT INTO people VALUES('Anna', 'Walczak', 'annawalczak7154@email.pl')
INSERT INTO people VALUES('Nadia', 'Baran', 'nadiabaran9658@email.pl')
INSERT INTO people VALUES('Michał', 'Zając', 'michałzając3742@email.pl')
INSERT INTO people VALUES('Jakub', 'Krawczk', 'jakubkrawczk8860@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Krawczk', 'mikołajkrawczk2402@email.pl')
INSERT INTO people VALUES('Jan', 'Sikora', 'jansikora2205@email.pl')
INSERT INTO people VALUES('Mateusz', 'Walczak', 'mateuszwalczak3362@email.pl')
INSERT INTO people VALUES('Maria', 'Król', 'mariakról6666@email.pl')
INSERT INTO people VALUES('Zofia', 'Stępień', 'zofiastępień8694@email.pl')
INSERT INTO people VALUES('Antoni', 'Woźniak', 'antoniwoźniak9445@email.pl')
INSERT INTO people VALUES('Wojciech', 'Adamczyk', 'wojciechadamczyk3673@email.pl')
INSERT INTO people VALUES('Michał', 'Walczak', 'michałwalczak3647@email.pl')
INSERT INTO people VALUES('Filip', 'Duda', 'filipduda2358@email.pl')
INSERT INTO people VALUES('Nikola', 'Baran', 'nikolabaran2850@email.pl')
INSERT INTO people VALUES('Zofia', 'Krawczk', 'zofiakrawczk6013@email.pl')
INSERT INTO people VALUES('Oliwia', 'Woźniak', 'oliwiawoźniak7189@email.pl')
INSERT INTO people VALUES('Mateusz', 'Baran', 'mateuszbaran4204@email.pl')
INSERT INTO people VALUES('Emilia', 'Woźniak', 'emiliawoźniak6761@email.pl')
INSERT INTO people VALUES('Anna', 'Zając', 'annazając4081@email.pl')
INSERT INTO people VALUES('Szymon', 'Szewczyk', 'szymonszewczyk6982@email.pl')
INSERT INTO people VALUES('Emilia', 'Zając', 'emiliazając5313@email.pl')
INSERT INTO people VALUES('Hanna', 'Woźniak', 'hannawoźniak3693@email.pl')
INSERT INTO people VALUES('Maja', 'Nowak', 'majanowak5084@email.pl')
INSERT INTO people VALUES('Franciszek', 'Dudek', 'franciszekdudek8879@email.pl')
INSERT INTO people VALUES('Jakub', 'Pawlak', 'jakubpawlak326@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Pawlak', 'aleksandrapawlak9602@email.pl')
INSERT INTO people VALUES('Emilia', 'Pawlak', 'emiliapawlak2223@email.pl')
INSERT INTO people VALUES('Wiktor', 'Kowalczyk', 'wiktorkowalczyk1577@email.pl')
INSERT INTO people VALUES('Martyna', 'Adamczyk', 'martynaadamczyk906@email.pl')
INSERT INTO people VALUES('Alicja', 'Wróbel', 'alicjawróbel9661@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Kowalczyk', 'aleksandrakowalczyk2462@email.pl')
INSERT INTO people VALUES('Antoni', 'Walczak', 'antoniwalczak1558@email.pl')
INSERT INTO people VALUES('Martyna', 'Duda', 'martynaduda4141@email.pl')
INSERT INTO people VALUES('Maria', 'Baran', 'mariabaran4792@email.pl')
INSERT INTO people VALUES('Franciszek', 'Wieczorek', 'franciszekwieczorek2293@email.pl')
INSERT INTO people VALUES('Julia', 'Szewczyk', 'juliaszewczyk7138@email.pl')
INSERT INTO people VALUES('Gabriela', 'Duda', 'gabrieladuda8474@email.pl')
INSERT INTO people VALUES('Kacper', 'Walczak', 'kacperwalczak2071@email.pl')
INSERT INTO people VALUES('Aleksander', 'Pawlak', 'aleksanderpawlak7672@email.pl')
INSERT INTO people VALUES('Maria', 'Pawlak', 'mariapawlak2721@email.pl')
INSERT INTO people VALUES('Nikola', 'Szewczyk', 'nikolaszewczyk8855@email.pl')
INSERT INTO people VALUES('Aleksander', 'Dudek', 'aleksanderdudek9879@email.pl')
INSERT INTO people VALUES('Igor', 'Kaczmarek', 'igorkaczmarek3380@email.pl')
INSERT INTO people VALUES('Michał', 'Wieczorek', 'michałwieczorek1194@email.pl')
INSERT INTO people VALUES('Martyna', 'Wójcik', 'martynawójcik1548@email.pl')
INSERT INTO people VALUES('Mateusz', 'Nowak', 'mateusznowak1285@email.pl')
INSERT INTO people VALUES('Michał', 'Krawczk', 'michałkrawczk5240@email.pl')
INSERT INTO people VALUES('Filip', 'Mazur', 'filipmazur298@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Król', 'zuzannakról2303@email.pl')
INSERT INTO people VALUES('Wojciech', 'Kowalczyk', 'wojciechkowalczyk9074@email.pl')
INSERT INTO people VALUES('Maria', 'Sikora', 'mariasikora1539@email.pl')
INSERT INTO people VALUES('Alan', 'Wójcik', 'alanwójcik3680@email.pl')
INSERT INTO people VALUES('Nikola', 'Szewczyk', 'nikolaszewczyk2705@email.pl')
INSERT INTO people VALUES('Jan', 'Szewczyk', 'janszewczyk4154@email.pl')
INSERT INTO people VALUES('Julia', 'Stępień', 'juliastępień6831@email.pl')
INSERT INTO people VALUES('Emilia', 'Stępień', 'emiliastępień3764@email.pl')
INSERT INTO people VALUES('Zofia', 'Nowak', 'zofianowak5033@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Kowalczyk', 'zuzannakowalczyk1644@email.pl')
INSERT INTO people VALUES('Martyna', 'Zając', 'martynazając4507@email.pl')
INSERT INTO people VALUES('Amelia', 'Pawlak', 'ameliapawlak7201@email.pl')
INSERT INTO people VALUES('Maja', 'Baran', 'majabaran8558@email.pl')
INSERT INTO people VALUES('Oliwia', 'Walczak', 'oliwiawalczak7296@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Wójcik', 'mikołajwójcik461@email.pl')
INSERT INTO people VALUES('Franciszek', 'Mazur', 'franciszekmazur3369@email.pl')
INSERT INTO people VALUES('Jakub', 'Baran', 'jakubbaran7301@email.pl')
INSERT INTO people VALUES('Martyna', 'Wieczorek', 'martynawieczorek2283@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Król', 'zuzannakról762@email.pl')
INSERT INTO people VALUES('Emilia', 'Pawlak', 'emiliapawlak2028@email.pl')
INSERT INTO people VALUES('Marcel', 'Duda', 'marcelduda1152@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Nowak', 'mikołajnowak3654@email.pl')
INSERT INTO people VALUES('Alan', 'Michalak', 'alanmichalak3578@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Michalak', 'aleksandramichalak8973@email.pl')
INSERT INTO people VALUES('Jan', 'Wieczorek', 'janwieczorek3693@email.pl')
INSERT INTO people VALUES('Julia', 'Stępień', 'juliastępień5999@email.pl')
INSERT INTO people VALUES('Hanna', 'Sikora', 'hannasikora3584@email.pl')
INSERT INTO people VALUES('Jakub', 'Mazur', 'jakubmazur1398@email.pl')
INSERT INTO people VALUES('Amelia', 'Król', 'ameliakról9058@email.pl')
INSERT INTO people VALUES('Maria', 'Woźniak', 'mariawoźniak2275@email.pl')
INSERT INTO people VALUES('Antoni', 'Mazur', 'antonimazur7304@email.pl')
INSERT INTO people VALUES('Michał', 'Krawczk', 'michałkrawczk9730@email.pl')
INSERT INTO people VALUES('Dawid', 'Stępień', 'dawidstępień7455@email.pl')
INSERT INTO people VALUES('Gabriela', 'Zając', 'gabrielazając4109@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Król', 'zuzannakról1820@email.pl')
INSERT INTO people VALUES('Emilia', 'Szewczyk', 'emiliaszewczyk4965@email.pl')
INSERT INTO people VALUES('Piotr', 'Dudek', 'piotrdudek9333@email.pl')
INSERT INTO people VALUES('Emilia', 'Michalak', 'emiliamichalak2978@email.pl')
INSERT INTO people VALUES('Franciszek', 'Dudek', 'franciszekdudek3582@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Walczak', 'aleksandrawalczak8599@email.pl')
INSERT INTO people VALUES('Aleksander', 'Pawlak', 'aleksanderpawlak6491@email.pl')
INSERT INTO people VALUES('Mateusz', 'Szewczyk', 'mateuszszewczyk4597@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Pawlak', 'aleksandrapawlak1985@email.pl')
INSERT INTO people VALUES('Julia', 'Sikora', 'juliasikora462@email.pl')
INSERT INTO people VALUES('Hanna', 'Stępień', 'hannastępień6741@email.pl')
INSERT INTO people VALUES('Emilia', 'Michalak', 'emiliamichalak9857@email.pl')
INSERT INTO people VALUES('Alan', 'Wróbel', 'alanwróbel1781@email.pl')
INSERT INTO people VALUES('Szymon', 'Nowak', 'szymonnowak8047@email.pl')
INSERT INTO people VALUES('Wojciech', 'Baran', 'wojciechbaran2356@email.pl')
INSERT INTO people VALUES('Maria', 'Sikora', 'mariasikora3062@email.pl')
INSERT INTO people VALUES('Piotr', 'Pawlak', 'piotrpawlak452@email.pl')
INSERT INTO people VALUES('Anna', 'Zając', 'annazając8525@email.pl')
INSERT INTO people VALUES('Dawid', 'Zając', 'dawidzając2758@email.pl')
INSERT INTO people VALUES('Amelia', 'Walczak', 'ameliawalczak7191@email.pl')
INSERT INTO people VALUES('Natalia', 'Walczak', 'nataliawalczak8567@email.pl')
INSERT INTO people VALUES('Bartosz', 'Mazur', 'bartoszmazur5145@email.pl')
INSERT INTO people VALUES('Adam', 'Woźniak', 'adamwoźniak3009@email.pl')
INSERT INTO people VALUES('Maja', 'Stępień', 'majastępień9357@email.pl')
INSERT INTO people VALUES('Igor', 'Duda', 'igorduda1784@email.pl')
INSERT INTO people VALUES('Wiktor', 'Adamczyk', 'wiktoradamczyk1602@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Baran', 'zuzannabaran8918@email.pl')
INSERT INTO people VALUES('Mateusz', 'Król', 'mateuszkról5986@email.pl')
INSERT INTO people VALUES('Alan', 'Wieczorek', 'alanwieczorek436@email.pl')
INSERT INTO people VALUES('Jan', 'Król', 'jankról4783@email.pl')
INSERT INTO people VALUES('Maria', 'Woźniak', 'mariawoźniak8336@email.pl')
INSERT INTO people VALUES('Julia', 'Kaczmarek', 'juliakaczmarek8000@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Michalak', 'zuzannamichalak7565@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Duda', 'zuzannaduda7991@email.pl')
INSERT INTO people VALUES('Wiktor', 'Wójcik', 'wiktorwójcik1544@email.pl')
INSERT INTO people VALUES('Natalia', 'Kaczmarek', 'nataliakaczmarek8257@email.pl')
INSERT INTO people VALUES('Gabriela', 'Baran', 'gabrielabaran6344@email.pl')
INSERT INTO people VALUES('Wojciech', 'Sikora', 'wojciechsikora1411@email.pl')
INSERT INTO people VALUES('Nikola', 'Król', 'nikolakról4174@email.pl')
INSERT INTO people VALUES('Antonina', 'Michalak', 'antoninamichalak9767@email.pl')
INSERT INTO people VALUES('Maria', 'Woźniak', 'mariawoźniak1204@email.pl')
INSERT INTO people VALUES('Gabriela', 'Dudek', 'gabrieladudek495@email.pl')
INSERT INTO people VALUES('Jan', 'Sikora', 'jansikora1636@email.pl')
INSERT INTO people VALUES('Julia', 'Wójcik', 'juliawójcik8607@email.pl')
INSERT INTO people VALUES('Wiktor', 'Sikora', 'wiktorsikora1434@email.pl')
INSERT INTO people VALUES('Gabriela', 'Baran', 'gabrielabaran683@email.pl')
INSERT INTO people VALUES('Nadia', 'Duda', 'nadiaduda8232@email.pl')
INSERT INTO people VALUES('Amelia', 'Stępień', 'ameliastępień2648@email.pl')
INSERT INTO people VALUES('Bartosz', 'Nowak', 'bartosznowak4611@email.pl')
INSERT INTO people VALUES('Mateusz', 'Adamczyk', 'mateuszadamczyk1313@email.pl')
INSERT INTO people VALUES('Adam', 'Zając', 'adamzając4782@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Król', 'wiktoriakról8989@email.pl')
INSERT INTO people VALUES('Igor', 'Sikora', 'igorsikora3850@email.pl')
INSERT INTO people VALUES('Lena', 'Walczak', 'lenawalczak3430@email.pl')
INSERT INTO people VALUES('Hanna', 'Nowak', 'hannanowak3846@email.pl')
INSERT INTO people VALUES('Igor', 'Nowak', 'igornowak5309@email.pl')
INSERT INTO people VALUES('Michał', 'Szewczyk', 'michałszewczyk3534@email.pl')
INSERT INTO people VALUES('Marcel', 'Walczak', 'marcelwalczak6426@email.pl')
INSERT INTO people VALUES('Zofia', 'Duda', 'zofiaduda4183@email.pl')
INSERT INTO people VALUES('Adam', 'Wróbel', 'adamwróbel5562@email.pl')
INSERT INTO people VALUES('Zofia', 'Wróbel', 'zofiawróbel6595@email.pl')
INSERT INTO people VALUES('Marcel', 'Adamczyk', 'marceladamczyk7887@email.pl')
INSERT INTO people VALUES('Jakub', 'Król', 'jakubkról9639@email.pl')
INSERT INTO people VALUES('Maria', 'Michalak', 'mariamichalak1105@email.pl')
INSERT INTO people VALUES('Maria', 'Stępień', 'mariastępień3592@email.pl')
INSERT INTO people VALUES('Aleksander', 'Baran', 'aleksanderbaran131@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Wójcik', 'wiktoriawójcik8253@email.pl')
INSERT INTO people VALUES('Piotr', 'Kowalczyk', 'piotrkowalczyk1584@email.pl')
INSERT INTO people VALUES('Oliwia', 'Duda', 'oliwiaduda7450@email.pl')
INSERT INTO people VALUES('Jakub', 'Duda', 'jakubduda6423@email.pl')
INSERT INTO people VALUES('Piotr', 'Mazur', 'piotrmazur3656@email.pl')
INSERT INTO people VALUES('Igor', 'Krawczk', 'igorkrawczk4284@email.pl')
INSERT INTO people VALUES('Mateusz', 'Zając', 'mateuszzając5290@email.pl')
INSERT INTO people VALUES('Maja', 'Kaczmarek', 'majakaczmarek9735@email.pl')
INSERT INTO people VALUES('Maria', 'Kaczmarek', 'mariakaczmarek4305@email.pl')
INSERT INTO people VALUES('Lena', 'Wieczorek', 'lenawieczorek8425@email.pl')
INSERT INTO people VALUES('Piotr', 'Zając', 'piotrzając7893@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Krawczk', 'zuzannakrawczk8628@email.pl')
INSERT INTO people VALUES('Igor', 'Baran', 'igorbaran2591@email.pl')
INSERT INTO people VALUES('Oliwia', 'Wróbel', 'oliwiawróbel7367@email.pl')
INSERT INTO people VALUES('Michał', 'Kowalczyk', 'michałkowalczyk7822@email.pl')
INSERT INTO people VALUES('Antoni', 'Woźniak', 'antoniwoźniak6454@email.pl')
INSERT INTO people VALUES('Michał', 'Wieczorek', 'michałwieczorek2683@email.pl')
INSERT INTO people VALUES('Oliwia', 'Wieczorek', 'oliwiawieczorek5807@email.pl')
INSERT INTO people VALUES('Julia', 'Król', 'juliakról4507@email.pl')
INSERT INTO people VALUES('Alan', 'Mazur', 'alanmazur8096@email.pl')
INSERT INTO people VALUES('Wiktor', 'Wróbel', 'wiktorwróbel952@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Wójcik', 'zuzannawójcik3130@email.pl')
INSERT INTO people VALUES('Szymon', 'Wieczorek', 'szymonwieczorek9827@email.pl')
INSERT INTO people VALUES('Dawid', 'Michalak', 'dawidmichalak1594@email.pl')
INSERT INTO people VALUES('Igor', 'Zając', 'igorzając7227@email.pl')
INSERT INTO people VALUES('Alicja', 'Szewczyk', 'alicjaszewczyk3772@email.pl')
INSERT INTO people VALUES('Jan', 'Krawczk', 'jankrawczk168@email.pl')
INSERT INTO people VALUES('Alicja', 'Zając', 'alicjazając7061@email.pl')
INSERT INTO people VALUES('Bartosz', 'Woźniak', 'bartoszwoźniak4504@email.pl')
INSERT INTO people VALUES('Anna', 'Mazur', 'annamazur9284@email.pl')
INSERT INTO people VALUES('Aleksander', 'Krawczk', 'aleksanderkrawczk4651@email.pl')
INSERT INTO people VALUES('Kacper', 'Adamczyk', 'kacperadamczyk1517@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Mazur', 'mikołajmazur4181@email.pl')
INSERT INTO people VALUES('Mateusz', 'Wójcik', 'mateuszwójcik1315@email.pl')
INSERT INTO people VALUES('Nadia', 'Mazur', 'nadiamazur8894@email.pl')
INSERT INTO people VALUES('Jan', 'Zając', 'janzając567@email.pl')
INSERT INTO people VALUES('Antoni', 'Kaczmarek', 'antonikaczmarek2519@email.pl')
INSERT INTO people VALUES('Piotr', 'Duda', 'piotrduda550@email.pl')
INSERT INTO people VALUES('Alan', 'Szewczyk', 'alanszewczyk4089@email.pl')
INSERT INTO people VALUES('Antonina', 'Nowak', 'antoninanowak3022@email.pl')
INSERT INTO people VALUES('Kacper', 'Wróbel', 'kacperwróbel3160@email.pl')
INSERT INTO people VALUES('Hanna', 'Adamczyk', 'hannaadamczyk5784@email.pl')
INSERT INTO people VALUES('Zofia', 'Sikora', 'zofiasikora8845@email.pl')
INSERT INTO people VALUES('Szymon', 'Wójcik', 'szymonwójcik94@email.pl')
INSERT INTO people VALUES('Zofia', 'Król', 'zofiakról9237@email.pl')
INSERT INTO people VALUES('Hanna', 'Nowak', 'hannanowak6336@email.pl')
INSERT INTO people VALUES('Szymon', 'Stępień', 'szymonstępień4061@email.pl')
INSERT INTO people VALUES('Bartosz', 'Pawlak', 'bartoszpawlak396@email.pl')
INSERT INTO people VALUES('Jakub', 'Adamczyk', 'jakubadamczyk4718@email.pl')
INSERT INTO people VALUES('Martyna', 'Sikora', 'martynasikora5564@email.pl')
INSERT INTO people VALUES('Gabriela', 'Sikora', 'gabrielasikora7421@email.pl')
INSERT INTO people VALUES('Natalia', 'Kowalczyk', 'nataliakowalczyk3418@email.pl')
INSERT INTO people VALUES('Zofia', 'Zając', 'zofiazając4469@email.pl')
INSERT INTO people VALUES('Hanna', 'Michalak', 'hannamichalak8711@email.pl')
INSERT INTO people VALUES('Nadia', 'Zając', 'nadiazając774@email.pl')
INSERT INTO people VALUES('Dawid', 'Krawczk', 'dawidkrawczk4263@email.pl')
INSERT INTO people VALUES('Amelia', 'Nowak', 'amelianowak1239@email.pl')
INSERT INTO people VALUES('Aleksander', 'Duda', 'aleksanderduda6503@email.pl')
INSERT INTO people VALUES('Lena', 'Duda', 'lenaduda8833@email.pl')
INSERT INTO people VALUES('Nadia', 'Szewczyk', 'nadiaszewczyk6611@email.pl')
INSERT INTO people VALUES('Michał', 'Dudek', 'michałdudek4493@email.pl')
INSERT INTO people VALUES('Dawid', 'Wieczorek', 'dawidwieczorek1096@email.pl')
INSERT INTO people VALUES('Nikola', 'Zając', 'nikolazając5419@email.pl')
INSERT INTO people VALUES('Kacper', 'Sikora', 'kacpersikora8218@email.pl')
INSERT INTO people VALUES('Oliwia', 'Kaczmarek', 'oliwiakaczmarek4285@email.pl')
INSERT INTO people VALUES('Wiktor', 'Woźniak', 'wiktorwoźniak8002@email.pl')
INSERT INTO people VALUES('Anna', 'Sikora', 'annasikora1500@email.pl')
INSERT INTO people VALUES('Wojciech', 'Wieczorek', 'wojciechwieczorek9204@email.pl')
INSERT INTO people VALUES('Nikola', 'Stępień', 'nikolastępień4715@email.pl')
INSERT INTO people VALUES('Hanna', 'Pawlak', 'hannapawlak8862@email.pl')
INSERT INTO people VALUES('Antoni', 'Adamczyk', 'antoniadamczyk4315@email.pl')
INSERT INTO people VALUES('Anna', 'Stępień', 'annastępień9163@email.pl')
INSERT INTO people VALUES('Anna', 'Sikora', 'annasikora2819@email.pl')
INSERT INTO people VALUES('Antonina', 'Kaczmarek', 'antoninakaczmarek3603@email.pl')
INSERT INTO people VALUES('Jakub', 'Szewczyk', 'jakubszewczyk4613@email.pl')
INSERT INTO people VALUES('Amelia', 'Wróbel', 'ameliawróbel4488@email.pl')
INSERT INTO people VALUES('Piotr', 'Wróbel', 'piotrwróbel643@email.pl')
INSERT INTO people VALUES('Filip', 'Michalak', 'filipmichalak5103@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Zając', 'zuzannazając3495@email.pl')
INSERT INTO people VALUES('Bartosz', 'Michalak', 'bartoszmichalak6474@email.pl')
INSERT INTO people VALUES('Amelia', 'Adamczyk', 'ameliaadamczyk9339@email.pl')
INSERT INTO people VALUES('Alan', 'Wójcik', 'alanwójcik5273@email.pl')
INSERT INTO people VALUES('Amelia', 'Walczak', 'ameliawalczak434@email.pl')
INSERT INTO people VALUES('Lena', 'Wieczorek', 'lenawieczorek9079@email.pl')
INSERT INTO people VALUES('Mateusz', 'Baran', 'mateuszbaran1510@email.pl')
INSERT INTO people VALUES('Bartosz', 'Sikora', 'bartoszsikora7652@email.pl')
INSERT INTO people VALUES('Amelia', 'Wieczorek', 'ameliawieczorek5078@email.pl')
INSERT INTO people VALUES('Kacper', 'Sikora', 'kacpersikora4404@email.pl')
INSERT INTO people VALUES('Hanna', 'Wójcik', 'hannawójcik4569@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Wieczorek', 'zuzannawieczorek7043@email.pl')
INSERT INTO people VALUES('Maja', 'Zając', 'majazając9346@email.pl')
INSERT INTO people VALUES('Lena', 'Wieczorek', 'lenawieczorek2838@email.pl')
INSERT INTO people VALUES('Kacper', 'Adamczyk', 'kacperadamczyk9484@email.pl')
INSERT INTO people VALUES('Bartosz', 'Walczak', 'bartoszwalczak9565@email.pl')
INSERT INTO people VALUES('Wiktor', 'Michalak', 'wiktormichalak3776@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Krawczk', 'mikołajkrawczk653@email.pl')
INSERT INTO people VALUES('Gabriela', 'Stępień', 'gabrielastępień6269@email.pl')
INSERT INTO people VALUES('Nikola', 'Mazur', 'nikolamazur6500@email.pl')
INSERT INTO people VALUES('Wojciech', 'Wójcik', 'wojciechwójcik4089@email.pl')
INSERT INTO people VALUES('Wojciech', 'Dudek', 'wojciechdudek5454@email.pl')
INSERT INTO people VALUES('Amelia', 'Kowalczyk', 'ameliakowalczyk4213@email.pl')
INSERT INTO people VALUES('Jakub', 'Kaczmarek', 'jakubkaczmarek2905@email.pl')
INSERT INTO people VALUES('Szymon', 'Wieczorek', 'szymonwieczorek7512@email.pl')
INSERT INTO people VALUES('Maria', 'Nowak', 'marianowak3300@email.pl')
INSERT INTO people VALUES('Alicja', 'Adamczyk', 'alicjaadamczyk9298@email.pl')
INSERT INTO people VALUES('Julia', 'Walczak', 'juliawalczak3116@email.pl')
INSERT INTO people VALUES('Jan', 'Kaczmarek', 'jankaczmarek2048@email.pl')
INSERT INTO people VALUES('Julia', 'Sikora', 'juliasikora7372@email.pl')
INSERT INTO people VALUES('Julia', 'Baran', 'juliabaran4408@email.pl')
INSERT INTO people VALUES('Marcel', 'Kowalczyk', 'marcelkowalczyk7553@email.pl')
INSERT INTO people VALUES('Oliwia', 'Wójcik', 'oliwiawójcik2862@email.pl')
INSERT INTO people VALUES('Anna', 'Woźniak', 'annawoźniak186@email.pl')
INSERT INTO people VALUES('Filip', 'Nowak', 'filipnowak9587@email.pl')
INSERT INTO people VALUES('Antoni', 'Nowak', 'antoninowak7744@email.pl')
INSERT INTO people VALUES('Dawid', 'Nowak', 'dawidnowak7082@email.pl')
INSERT INTO people VALUES('Adam', 'Wróbel', 'adamwróbel3058@email.pl')
INSERT INTO people VALUES('Wojciech', 'Kaczmarek', 'wojciechkaczmarek2242@email.pl')
INSERT INTO people VALUES('Alan', 'Szewczyk', 'alanszewczyk6165@email.pl')
INSERT INTO people VALUES('Nikola', 'Nowak', 'nikolanowak1152@email.pl')
INSERT INTO people VALUES('Zuzanna', 'Michalak', 'zuzannamichalak9591@email.pl')
INSERT INTO people VALUES('Emilia', 'Król', 'emiliakról611@email.pl')
INSERT INTO people VALUES('Zofia', 'Szewczyk', 'zofiaszewczyk2428@email.pl')
INSERT INTO people VALUES('Wojciech', 'Król', 'wojciechkról3731@email.pl')
INSERT INTO people VALUES('Lena', 'Krawczk', 'lenakrawczk7402@email.pl')
INSERT INTO people VALUES('Alan', 'Kowalczyk', 'alankowalczyk2106@email.pl')
INSERT INTO people VALUES('Wiktoria', 'Zając', 'wiktoriazając7882@email.pl')
INSERT INTO people VALUES('Lena', 'Woźniak', 'lenawoźniak8296@email.pl')
INSERT INTO people VALUES('Kacper', 'Walczak', 'kacperwalczak4861@email.pl')
INSERT INTO people VALUES('Wojciech', 'Krawczk', 'wojciechkrawczk3263@email.pl')
INSERT INTO people VALUES('Michał', 'Michalak', 'michałmichalak8675@email.pl')
INSERT INTO people VALUES('Mikołaj', 'Pawlak', 'mikołajpawlak545@email.pl')
INSERT INTO people VALUES('Jan', 'Sikora', 'jansikora7243@email.pl')
INSERT INTO people VALUES('Aleksandra', 'Krawczk', 'aleksandrakrawczk7217@email.pl')
INSERT INTO people VALUES('Oliwia', 'Stępień', 'oliwiastępień2645@email.pl')
INSERT INTO people VALUES('Julia', 'Michalak', 'juliamichalak6178@email.pl')
INSERT INTO people VALUES('Wiktor', 'Dudek', 'wiktordudek5602@email.pl')
INSERT INTO people VALUES('Filip', 'Zając', 'filipzając2817@email.pl')
INSERT INTO people VALUES('Alicja', 'Zając', 'alicjazając6658@email.pl')
INSERT INTO people VALUES('Igor', 'Dudek', 'igordudek6460@email.pl')
INSERT INTO people VALUES('Alicja', 'Woźniak', 'alicjawoźniak6406@email.pl')
INSERT INTO people VALUES('Piotr', 'Adamczyk', 'piotradamczyk4482@email.pl')
INSERT INTO people VALUES('Wiktor', 'Król', 'wiktorkról992@email.pl')
INSERT INTO people VALUES('Oliwia', 'Stępień', 'oliwiastępień3993@email.pl')
INSERT INTO people VALUES('Kacper', 'Adamczyk', 'kacperadamczyk2124@email.pl')
INSERT INTO people VALUES('Nikola', 'Zając', 'nikolazając7999@email.pl')
INSERT INTO people VALUES('Michał', 'Wójcik', 'michałwójcik9582@email.pl')
INSERT INTO people VALUES('Antoni', 'Mazur', 'antonimazur6133@email.pl')

