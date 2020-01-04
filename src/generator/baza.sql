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

INSERT INTO conferences VALUES ('Akademickie spotkanie informatyczne', 'Kielce', 'Królewska', '25-511', '3', 0.55);
INSERT INTO conference_days VALUES(1, '2018-01-26', 200)
INSERT INTO conference_prices VALUES(1, '2018-01-26', 240)
INSERT INTO conference_prices VALUES(1, '2018-01-12', 192.0)
INSERT INTO workshops VALUES(1, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '11:20:00', '14:35:00', '1312', 60, 65);
INSERT INTO workshops VALUES(1, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '17:10:00', '19:35:00', '927', 160, 95);
INSERT INTO workshops VALUES(1, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '08:50:00', '11:15:00', '616', 150, 50);
INSERT INTO conference_days VALUES(1, '2018-01-27', 200)
INSERT INTO conference_prices VALUES(1, '2018-01-26', 230)
INSERT INTO conference_prices VALUES(1, '2018-01-12', 184.0)
INSERT INTO workshops VALUES(2, 'Warsztaty z kryptografii', 'Brak opisu.', '13:00:00', '15:25:00', '507', 195, 65);
INSERT INTO workshops VALUES(2, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '10:30:00', '12:05:00', '609', 125, 15);
INSERT INTO workshops VALUES(2, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '09:40:00', '12:55:00', '909', 110, 40);
INSERT INTO workshops VALUES(2, 'Warsztaty z programowania równoległego', 'Brak opisu.', '11:20:00', '13:45:00', '514', 140, 35);
INSERT INTO conferences VALUES ('Ademickie zebranie kół naukowych', 'Poznań', 'Lipowa', '61-740', '35', 0.9);
INSERT INTO conference_days VALUES(2, '2018-02-08', 200)
INSERT INTO conference_prices VALUES(2, '2018-02-08', 430)
INSERT INTO conference_prices VALUES(2, '2018-01-25', 344.0)
INSERT INTO workshops VALUES(3, 'Wykład z algorytmów grafowych', 'Brak opisu.', '11:20:00', '14:35:00', '29', 180, 25);
INSERT INTO workshops VALUES(3, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '08:00:00', '10:25:00', '5', 145, 40);
INSERT INTO workshops VALUES(3, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '17:10:00', '18:45:00', '910', 70, 10);
INSERT INTO workshops VALUES(3, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '08:00:00', '11:15:00', '726', 120, 70);
INSERT INTO conference_days VALUES(2, '2018-02-09', 200)
INSERT INTO conference_prices VALUES(2, '2018-02-08', 150)
INSERT INTO conference_prices VALUES(2, '2018-01-25', 120.0)
INSERT INTO workshops VALUES(4, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '11:20:00', '14:35:00', '700', 70, 75);
INSERT INTO workshops VALUES(4, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '08:00:00', '09:35:00', '8', 65, 60);
INSERT INTO workshops VALUES(4, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '08:50:00', '10:25:00', '118', 130, 70);
INSERT INTO conference_days VALUES(2, '2018-02-10', 200)
INSERT INTO conference_prices VALUES(2, '2018-02-08', 480)
INSERT INTO conference_prices VALUES(2, '2018-01-25', 384.0)
INSERT INTO workshops VALUES(5, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '13:50:00', '16:15:00', '1207', 195, 15);
INSERT INTO workshops VALUES(5, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '17:10:00', '18:45:00', '408', 155, 95);
INSERT INTO workshops VALUES(5, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '17:10:00', '20:25:00', '1401', 90, 35);
INSERT INTO conferences VALUES ('Studenckie forum informatyczne', 'Lublin', '3 Maja', '20-410', '28', 0.0);
INSERT INTO conference_days VALUES(3, '2018-03-02', 200)
INSERT INTO conference_prices VALUES(3, '2018-03-02', 100)
INSERT INTO conference_prices VALUES(3, '2018-02-16', 80.0)
INSERT INTO workshops VALUES(6, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '17:10:00', '18:45:00', '218', 150, 50);
INSERT INTO workshops VALUES(6, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '13:50:00', '17:05:00', '102', 95, 15);
INSERT INTO workshops VALUES(6, 'Wykład z kryptografii', 'Brak opisu.', '09:40:00', '11:15:00', '108', 105, 50);
INSERT INTO conference_days VALUES(3, '2018-03-03', 200)
INSERT INTO conference_prices VALUES(3, '2018-03-02', 300)
INSERT INTO conference_prices VALUES(3, '2018-02-16', 240.0)
INSERT INTO workshops VALUES(7, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '12:10:00', '13:45:00', '128', 165, 95);
INSERT INTO workshops VALUES(7, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '13:00:00', '16:15:00', '1121', 185, 15);
INSERT INTO workshops VALUES(7, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '08:50:00', '12:55:00', '101', 120, 35);
INSERT INTO workshops VALUES(7, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '13:00:00', '15:25:00', '1224', 50, 75);
INSERT INTO workshops VALUES(7, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '12:10:00', '16:15:00', '703', 160, 65);
INSERT INTO conferences VALUES ('Akademickie konferencje kół naukowych', 'Rzeszów', '3 Maja', '35-030', '22', 0.8);
INSERT INTO conference_days VALUES(4, '2018-03-16', 200)
INSERT INTO conference_prices VALUES(4, '2018-03-16', 280)
INSERT INTO conference_prices VALUES(4, '2018-03-02', 224.0)
INSERT INTO workshops VALUES(8, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '17:10:00', '19:35:00', '1117', 190, 30);
INSERT INTO workshops VALUES(8, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '10:30:00', '12:05:00', '1027', 180, 70);
INSERT INTO workshops VALUES(8, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '11:20:00', '15:25:00', '1215', 185, 90);
INSERT INTO conference_days VALUES(4, '2018-03-17', 200)
INSERT INTO conference_prices VALUES(4, '2018-03-16', 290)
INSERT INTO conference_prices VALUES(4, '2018-03-02', 232.0)
INSERT INTO workshops VALUES(9, 'Wykład z programowania w języku C++', 'Brak opisu.', '13:00:00', '15:25:00', '8', 80, 55);
INSERT INTO workshops VALUES(9, 'Warsztaty z architektur procesorów', 'Brak opisu.', '12:10:00', '13:45:00', '1012', 160, 75);
INSERT INTO workshops VALUES(9, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '09:40:00', '11:15:00', '10', 65, 60);
INSERT INTO workshops VALUES(9, 'Wykład z architektur procesorów', 'Brak opisu.', '08:50:00', '12:05:00', '1028', 60, 30);
INSERT INTO conferences VALUES ('Ademickie zebranie informatyczne', 'Stalowa Wola', 'Mickiewicza', '37-450', '40', 0.65);
INSERT INTO conference_days VALUES(5, '2018-03-29', 200)
INSERT INTO conference_prices VALUES(5, '2018-03-29', 240)
INSERT INTO conference_prices VALUES(5, '2018-03-15', 192.0)
INSERT INTO workshops VALUES(10, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '14:40:00', '17:05:00', '426', 75, 60);
INSERT INTO workshops VALUES(10, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '16:20:00', '18:45:00', '1418', 165, 15);
INSERT INTO workshops VALUES(10, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '15:30:00', '17:05:00', '406', 190, 80);
INSERT INTO workshops VALUES(10, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '16:20:00', '19:35:00', '705', 185, 40);
INSERT INTO conference_days VALUES(5, '2018-03-30', 200)
INSERT INTO conference_prices VALUES(5, '2018-03-29', 370)
INSERT INTO conference_prices VALUES(5, '2018-03-15', 296.0)
INSERT INTO workshops VALUES(11, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '09:40:00', '13:45:00', '1100', 120, 10);
INSERT INTO workshops VALUES(11, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '13:00:00', '14:35:00', '602', 190, 80);
INSERT INTO workshops VALUES(11, 'Wykład z systemów ekspertowych', 'Brak opisu.', '13:50:00', '17:55:00', '1200', 190, 50);
INSERT INTO workshops VALUES(11, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '09:40:00', '13:45:00', '223', 195, 40);
INSERT INTO workshops VALUES(11, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '13:50:00', '17:05:00', '1122', 105, 95);
INSERT INTO conference_days VALUES(5, '2018-03-31', 200)
INSERT INTO conference_prices VALUES(5, '2018-03-29', 360)
INSERT INTO conference_prices VALUES(5, '2018-03-15', 288.0)
INSERT INTO workshops VALUES(12, 'Wykład z programowania w języku PHP', 'Brak opisu.', '10:30:00', '12:55:00', '501', 130, 65);
INSERT INTO workshops VALUES(12, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '11:20:00', '12:55:00', '1123', 70, 75);
INSERT INTO workshops VALUES(12, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '15:30:00', '19:35:00', '829', 135, 75);
INSERT INTO conferences VALUES ('Studenckie warsztaty informatyków', 'Lublin', 'Lipowa', '20-410', '9', 0.1);
INSERT INTO conference_days VALUES(6, '2018-04-18', 200)
INSERT INTO conference_prices VALUES(6, '2018-04-18', 380)
INSERT INTO conference_prices VALUES(6, '2018-04-04', 304.0)
INSERT INTO workshops VALUES(13, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '10:30:00', '12:55:00', '714', 85, 15);
INSERT INTO workshops VALUES(13, 'Wykład z programowania obiektowego', 'Brak opisu.', '17:10:00', '20:25:00', '512', 115, 45);
INSERT INTO workshops VALUES(13, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '14:40:00', '17:55:00', '1315', 60, 65);
INSERT INTO conference_days VALUES(6, '2018-04-19', 200)
INSERT INTO conference_prices VALUES(6, '2018-04-18', 320)
INSERT INTO conference_prices VALUES(6, '2018-04-04', 256.0)
INSERT INTO workshops VALUES(14, 'Wykład z programowania w języku Python', 'Brak opisu.', '09:40:00', '13:45:00', '227', 145, 95);
INSERT INTO workshops VALUES(14, 'Warsztaty z programowania równoległego', 'Brak opisu.', '08:50:00', '12:55:00', '1422', 90, 25);
INSERT INTO workshops VALUES(14, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '12:10:00', '16:15:00', '217', 150, 25);
INSERT INTO workshops VALUES(14, 'Wykład z programowania w języku Java', 'Brak opisu.', '10:30:00', '14:35:00', '27', 105, 55);
INSERT INTO conference_days VALUES(6, '2018-04-20', 200)
INSERT INTO conference_prices VALUES(6, '2018-04-18', 430)
INSERT INTO conference_prices VALUES(6, '2018-04-04', 344.0)
INSERT INTO workshops VALUES(15, 'Wykład z systemów ekspertowych', 'Brak opisu.', '15:30:00', '17:55:00', '622', 60, 55);
INSERT INTO workshops VALUES(15, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '13:00:00', '16:15:00', '1229', 60, 30);
INSERT INTO workshops VALUES(15, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '15:30:00', '19:35:00', '1424', 55, 85);
INSERT INTO workshops VALUES(15, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '08:00:00', '12:05:00', '1126', 110, 90);
INSERT INTO conference_days VALUES(6, '2018-04-21', 200)
INSERT INTO conference_prices VALUES(6, '2018-04-18', 380)
INSERT INTO conference_prices VALUES(6, '2018-04-04', 304.0)
INSERT INTO workshops VALUES(16, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '18:00:00', '20:25:00', '201', 185, 95);
INSERT INTO workshops VALUES(16, 'Warsztaty z kryptografii', 'Brak opisu.', '08:50:00', '12:05:00', '1007', 190, 70);
INSERT INTO workshops VALUES(16, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '14:40:00', '17:55:00', '1104', 80, 15);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie miłośników programowania', 'Katowice', 'Wojska Polskiego', '40-236', '7', 0.3);
INSERT INTO conference_days VALUES(7, '2018-05-18', 200)
INSERT INTO conference_prices VALUES(7, '2018-05-18', 320)
INSERT INTO conference_prices VALUES(7, '2018-05-04', 256.0)
INSERT INTO workshops VALUES(17, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '14:40:00', '17:55:00', '814', 105, 10);
INSERT INTO workshops VALUES(17, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '15:30:00', '17:05:00', '704', 130, 80);
INSERT INTO workshops VALUES(17, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '08:00:00', '11:15:00', '128', 180, 25);
INSERT INTO conference_days VALUES(7, '2018-05-19', 200)
INSERT INTO conference_prices VALUES(7, '2018-05-18', 420)
INSERT INTO conference_prices VALUES(7, '2018-05-04', 336.0)
INSERT INTO workshops VALUES(18, 'Wykład z kryptografii', 'Brak opisu.', '09:40:00', '12:55:00', '1412', 150, 55);
INSERT INTO workshops VALUES(18, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '09:40:00', '12:55:00', '710', 185, 55);
INSERT INTO workshops VALUES(18, 'Wykład z programowania w języku Java', 'Brak opisu.', '13:50:00', '16:15:00', '609', 90, 85);
INSERT INTO conferences VALUES ('Akademickie spotkanie informatyczne', 'Szczecin', 'Długa', '71-627', '11', 0.55);
INSERT INTO conference_days VALUES(8, '2018-05-31', 200)
INSERT INTO conference_prices VALUES(8, '2018-05-31', 350)
INSERT INTO conference_prices VALUES(8, '2018-05-17', 280.0)
INSERT INTO workshops VALUES(19, 'Wykład z programowania w języku Julia', 'Brak opisu.', '10:30:00', '12:55:00', '703', 155, 15);
INSERT INTO workshops VALUES(19, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '16:20:00', '20:25:00', '800', 155, 10);
INSERT INTO workshops VALUES(19, 'Wykład z teorii kompilacji', 'Brak opisu.', '10:30:00', '13:45:00', '1001', 155, 40);
INSERT INTO workshops VALUES(19, 'Wykład z programowania w języku Java', 'Brak opisu.', '16:20:00', '18:45:00', '1114', 185, 70);
INSERT INTO workshops VALUES(19, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '13:00:00', '16:15:00', '1318', 180, 25);
INSERT INTO workshops VALUES(19, 'Wykład z teorii kompilacji', 'Brak opisu.', '17:10:00', '18:45:00', '6', 120, 50);
INSERT INTO conference_days VALUES(8, '2018-06-01', 200)
INSERT INTO conference_prices VALUES(8, '2018-05-31', 200)
INSERT INTO conference_prices VALUES(8, '2018-05-17', 160.0)
INSERT INTO workshops VALUES(20, 'Wykład z grafiki komputerowej', 'Brak opisu.', '13:50:00', '16:15:00', '813', 190, 25);
INSERT INTO workshops VALUES(20, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '14:40:00', '17:55:00', '1011', 55, 10);
INSERT INTO workshops VALUES(20, 'Wykład z programowania w języku Python', 'Brak opisu.', '12:10:00', '15:25:00', '526', 55, 35);
INSERT INTO workshops VALUES(20, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '09:40:00', '12:55:00', '705', 185, 45);
INSERT INTO conference_days VALUES(8, '2018-06-02', 200)
INSERT INTO conference_prices VALUES(8, '2018-05-31', 430)
INSERT INTO conference_prices VALUES(8, '2018-05-17', 344.0)
INSERT INTO workshops VALUES(21, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '15:30:00', '19:35:00', '1228', 70, 10);
INSERT INTO workshops VALUES(21, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '11:20:00', '15:25:00', '1021', 55, 10);
INSERT INTO workshops VALUES(21, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '18:00:00', '20:25:00', '1416', 175, 25);
INSERT INTO workshops VALUES(21, 'Wykład z grafiki komputerowej', 'Brak opisu.', '10:30:00', '12:55:00', '1326', 155, 30);
INSERT INTO workshops VALUES(21, 'Warsztaty z architektur procesorów', 'Brak opisu.', '17:10:00', '19:35:00', '1323', 130, 45);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie kół naukowych', 'Poznań', 'Wojska Polskiego', '61-740', '15', 0.5);
INSERT INTO conference_days VALUES(9, '2018-06-14', 200)
INSERT INTO conference_prices VALUES(9, '2018-06-14', 250)
INSERT INTO conference_prices VALUES(9, '2018-05-31', 200.0)
INSERT INTO workshops VALUES(22, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '17:10:00', '19:35:00', '408', 80, 40);
INSERT INTO workshops VALUES(22, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '10:30:00', '13:45:00', '524', 75, 80);
INSERT INTO conference_days VALUES(9, '2018-06-15', 200)
INSERT INTO conference_prices VALUES(9, '2018-06-14', 360)
INSERT INTO conference_prices VALUES(9, '2018-05-31', 288.0)
INSERT INTO workshops VALUES(23, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '14:40:00', '17:05:00', '29', 80, 20);
INSERT INTO workshops VALUES(23, 'Wykład z systemów operacyjnych', 'Brak opisu.', '08:50:00', '10:25:00', '108', 85, 55);
INSERT INTO workshops VALUES(23, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '10:30:00', '14:35:00', '504', 85, 90);
INSERT INTO workshops VALUES(23, 'Wykład z teorii kompilacji', 'Brak opisu.', '14:40:00', '17:55:00', '602', 80, 10);
INSERT INTO workshops VALUES(23, 'Warsztaty z architektur procesorów', 'Brak opisu.', '15:30:00', '19:35:00', '714', 55, 40);
INSERT INTO conference_days VALUES(9, '2018-06-16', 200)
INSERT INTO conference_prices VALUES(9, '2018-06-14', 360)
INSERT INTO conference_prices VALUES(9, '2018-05-31', 288.0)
INSERT INTO workshops VALUES(24, 'Warsztaty z programowania równoległego', 'Brak opisu.', '13:00:00', '16:15:00', '404', 105, 10);
INSERT INTO workshops VALUES(24, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '14:40:00', '17:05:00', '503', 155, 65);
INSERT INTO workshops VALUES(24, 'Wykład z programowania obiektowego', 'Brak opisu.', '11:20:00', '12:55:00', '8', 60, 90);
INSERT INTO workshops VALUES(24, 'Warsztaty z kryptografii', 'Brak opisu.', '13:50:00', '17:55:00', '1126', 170, 70);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie kół naukowych', 'Szczecin', 'Długa', '71-627', '49', 0.5);
INSERT INTO conference_days VALUES(10, '2018-06-29', 200)
INSERT INTO conference_prices VALUES(10, '2018-06-29', 240)
INSERT INTO conference_prices VALUES(10, '2018-06-15', 192.0)
INSERT INTO workshops VALUES(25, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '11:20:00', '15:25:00', '326', 185, 75);
INSERT INTO workshops VALUES(25, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '09:40:00', '11:15:00', '705', 65, 50);
INSERT INTO workshops VALUES(25, 'Wykład z programowania równoległego', 'Brak opisu.', '16:20:00', '17:55:00', '524', 140, 50);
INSERT INTO conference_days VALUES(10, '2018-06-30', 200)
INSERT INTO conference_prices VALUES(10, '2018-06-29', 340)
INSERT INTO conference_prices VALUES(10, '2018-06-15', 272.0)
INSERT INTO workshops VALUES(26, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '11:20:00', '15:25:00', '1403', 190, 70);
INSERT INTO workshops VALUES(26, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '15:30:00', '17:05:00', '625', 75, 40);
INSERT INTO workshops VALUES(26, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '16:20:00', '20:25:00', '1321', 170, 70);
INSERT INTO workshops VALUES(26, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '08:50:00', '12:05:00', '101', 170, 80);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie informatyków', 'Lublin', 'Mickiewicza', '20-410', '36', 1.0);
INSERT INTO conference_days VALUES(11, '2018-07-05', 200)
INSERT INTO conference_prices VALUES(11, '2018-07-05', 390)
INSERT INTO conference_prices VALUES(11, '2018-06-21', 312.0)
INSERT INTO workshops VALUES(27, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '11:20:00', '15:25:00', '912', 90, 65);
INSERT INTO workshops VALUES(27, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '14:40:00', '17:55:00', '323', 70, 10);
INSERT INTO workshops VALUES(27, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '12:10:00', '13:45:00', '704', 125, 65);
INSERT INTO workshops VALUES(27, 'Wykład z programowania w języku C++', 'Brak opisu.', '15:30:00', '17:05:00', '1000', 105, 75);
INSERT INTO conference_days VALUES(11, '2018-07-06', 200)
INSERT INTO conference_prices VALUES(11, '2018-07-05', 310)
INSERT INTO conference_prices VALUES(11, '2018-06-21', 248.0)
INSERT INTO workshops VALUES(28, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '15:30:00', '19:35:00', '1308', 165, 30);
INSERT INTO workshops VALUES(28, 'Wykład z programowania w języku PHP', 'Brak opisu.', '10:30:00', '12:55:00', '110', 55, 10);
INSERT INTO workshops VALUES(28, 'Wykład z architektur procesorów', 'Brak opisu.', '16:20:00', '20:25:00', '929', 185, 75);
INSERT INTO workshops VALUES(28, 'Wykład z systemów operacyjnych', 'Brak opisu.', '08:00:00', '11:15:00', '219', 190, 55);
INSERT INTO conference_days VALUES(11, '2018-07-07', 200)
INSERT INTO conference_prices VALUES(11, '2018-07-05', 340)
INSERT INTO conference_prices VALUES(11, '2018-06-21', 272.0)
INSERT INTO workshops VALUES(29, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '08:00:00', '12:05:00', '114', 115, 35);
INSERT INTO workshops VALUES(29, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '15:30:00', '17:55:00', '526', 195, 70);
INSERT INTO workshops VALUES(29, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '13:50:00', '17:55:00', '824', 50, 15);
INSERT INTO workshops VALUES(29, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '08:50:00', '12:05:00', '702', 170, 90);
INSERT INTO workshops VALUES(29, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '11:20:00', '12:55:00', '1027', 130, 35);
INSERT INTO workshops VALUES(29, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '11:20:00', '13:45:00', '617', 125, 25);
INSERT INTO conferences VALUES ('Międzyuczelniane forum programistyczne', 'Wrocław', '3 Maja', '52-119', '46', 0.85);
INSERT INTO conference_days VALUES(12, '2018-07-20', 200)
INSERT INTO conference_prices VALUES(12, '2018-07-20', 220)
INSERT INTO conference_prices VALUES(12, '2018-07-06', 176.0)
INSERT INTO workshops VALUES(30, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '13:00:00', '14:35:00', '1027', 85, 30);
INSERT INTO workshops VALUES(30, 'Wykład z kryptografii', 'Brak opisu.', '17:10:00', '18:45:00', '715', 170, 75);
INSERT INTO workshops VALUES(30, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '10:30:00', '12:05:00', '514', 70, 50);
INSERT INTO workshops VALUES(30, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '14:40:00', '18:45:00', '703', 75, 95);
INSERT INTO workshops VALUES(30, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '18:00:00', '20:25:00', '613', 50, 95);
INSERT INTO conference_days VALUES(12, '2018-07-21', 200)
INSERT INTO conference_prices VALUES(12, '2018-07-20', 460)
INSERT INTO conference_prices VALUES(12, '2018-07-06', 368.0)
INSERT INTO workshops VALUES(31, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '11:20:00', '12:55:00', '1409', 155, 95);
INSERT INTO workshops VALUES(31, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '08:50:00', '11:15:00', '126', 190, 85);
INSERT INTO workshops VALUES(31, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '10:30:00', '12:05:00', '1204', 70, 20);
INSERT INTO workshops VALUES(31, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '09:40:00', '12:05:00', '918', 195, 75);
INSERT INTO conferences VALUES ('Powszechne konferencje programistyczne', 'Lublin', 'Mickiewicza', '20-410', '27', 0.55);
INSERT INTO conference_days VALUES(13, '2018-07-25', 200)
INSERT INTO conference_prices VALUES(13, '2018-07-25', 320)
INSERT INTO conference_prices VALUES(13, '2018-07-11', 256.0)
INSERT INTO workshops VALUES(32, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '17:10:00', '19:35:00', '402', 75, 55);
INSERT INTO workshops VALUES(32, 'Wykład z programowania w języku Rust', 'Brak opisu.', '08:00:00', '10:25:00', '1421', 150, 60);
INSERT INTO workshops VALUES(32, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '10:30:00', '13:45:00', '1403', 180, 75);
INSERT INTO conference_days VALUES(13, '2018-07-26', 200)
INSERT INTO conference_prices VALUES(13, '2018-07-25', 190)
INSERT INTO conference_prices VALUES(13, '2018-07-11', 152.0)
INSERT INTO workshops VALUES(33, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '18:00:00', '19:35:00', '1021', 80, 15);
INSERT INTO workshops VALUES(33, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '12:10:00', '14:35:00', '1119', 160, 95);
INSERT INTO workshops VALUES(33, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '08:00:00', '11:15:00', '925', 155, 75);
INSERT INTO workshops VALUES(33, 'Wykład z programowania w języku Java', 'Brak opisu.', '13:00:00', '17:05:00', '1119', 55, 70);
INSERT INTO conference_days VALUES(13, '2018-07-27', 200)
INSERT INTO conference_prices VALUES(13, '2018-07-25', 220)
INSERT INTO conference_prices VALUES(13, '2018-07-11', 176.0)
INSERT INTO workshops VALUES(34, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '13:50:00', '16:15:00', '1003', 80, 35);
INSERT INTO workshops VALUES(34, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '16:20:00', '19:35:00', '1200', 70, 20);
INSERT INTO workshops VALUES(34, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '12:10:00', '13:45:00', '1303', 95, 70);
INSERT INTO workshops VALUES(34, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '18:00:00', '20:25:00', '200', 175, 45);
INSERT INTO conference_days VALUES(13, '2018-07-28', 200)
INSERT INTO conference_prices VALUES(13, '2018-07-25', 190)
INSERT INTO conference_prices VALUES(13, '2018-07-11', 152.0)
INSERT INTO workshops VALUES(35, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '13:00:00', '15:25:00', '225', 95, 40);
INSERT INTO workshops VALUES(35, 'Wykład z architektur procesorów', 'Brak opisu.', '11:20:00', '13:45:00', '419', 170, 75);
INSERT INTO conferences VALUES ('Ademickie zebranie miłośników programowania', 'Rzeszów', 'Armii Krajowej', '35-030', '14', 0.8);
INSERT INTO conference_days VALUES(14, '2018-08-16', 200)
INSERT INTO conference_prices VALUES(14, '2018-08-16', 170)
INSERT INTO conference_prices VALUES(14, '2018-08-02', 136.0)
INSERT INTO workshops VALUES(36, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '11:20:00', '14:35:00', '1020', 135, 90);
INSERT INTO workshops VALUES(36, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '16:20:00', '20:25:00', '924', 90, 40);
INSERT INTO workshops VALUES(36, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '13:50:00', '17:55:00', '912', 185, 75);
INSERT INTO workshops VALUES(36, 'Wykład z grafiki komputerowej', 'Brak opisu.', '08:50:00', '10:25:00', '306', 105, 15);
INSERT INTO conference_days VALUES(14, '2018-08-17', 200)
INSERT INTO conference_prices VALUES(14, '2018-08-16', 100)
INSERT INTO conference_prices VALUES(14, '2018-08-02', 80.0)
INSERT INTO workshops VALUES(37, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '12:10:00', '13:45:00', '204', 120, 10);
INSERT INTO workshops VALUES(37, 'Wykład z programowania w języku Rust', 'Brak opisu.', '16:20:00', '20:25:00', '428', 145, 60);
INSERT INTO workshops VALUES(37, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '18:00:00', '20:25:00', '405', 170, 25);
INSERT INTO workshops VALUES(37, 'Wykład z programowania równoległego', 'Brak opisu.', '16:20:00', '18:45:00', '315', 140, 75);
INSERT INTO conference_days VALUES(14, '2018-08-18', 200)
INSERT INTO conference_prices VALUES(14, '2018-08-16', 260)
INSERT INTO conference_prices VALUES(14, '2018-08-02', 208.0)
INSERT INTO workshops VALUES(38, 'Wykład z grafiki komputerowej', 'Brak opisu.', '14:40:00', '17:55:00', '1319', 110, 30);
INSERT INTO workshops VALUES(38, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '13:00:00', '15:25:00', '725', 90, 65);
INSERT INTO workshops VALUES(38, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '14:40:00', '17:55:00', '23', 115, 45);
INSERT INTO workshops VALUES(38, 'Wykład z programowania w języku PHP', 'Brak opisu.', '17:10:00', '20:25:00', '913', 145, 45);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie miłośników programowania', 'Rzeszów', 'Wojska Polskiego', '35-030', '1', 0.8);
INSERT INTO conference_days VALUES(15, '2018-08-31', 200)
INSERT INTO conference_prices VALUES(15, '2018-08-31', 130)
INSERT INTO conference_prices VALUES(15, '2018-08-17', 104.0)
INSERT INTO workshops VALUES(39, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '17:10:00', '19:35:00', '21', 155, 70);
INSERT INTO workshops VALUES(39, 'Wykład z programowania w języku C++', 'Brak opisu.', '14:40:00', '18:45:00', '217', 55, 75);
INSERT INTO workshops VALUES(39, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '09:40:00', '13:45:00', '804', 70, 35);
INSERT INTO workshops VALUES(39, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '15:30:00', '19:35:00', '1224', 115, 35);
INSERT INTO workshops VALUES(39, 'Wykład z programowania równoległego', 'Brak opisu.', '08:00:00', '12:05:00', '515', 75, 90);
INSERT INTO conference_days VALUES(15, '2018-09-01', 200)
INSERT INTO conference_prices VALUES(15, '2018-08-31', 240)
INSERT INTO conference_prices VALUES(15, '2018-08-17', 192.0)
INSERT INTO workshops VALUES(40, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '14:40:00', '17:55:00', '1128', 100, 45);
INSERT INTO workshops VALUES(40, 'Wykład z programowania równoległego', 'Brak opisu.', '08:00:00', '10:25:00', '500', 70, 80);
INSERT INTO workshops VALUES(40, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '16:20:00', '17:55:00', '1308', 185, 40);
INSERT INTO workshops VALUES(40, 'Warsztaty z architektur procesorów', 'Brak opisu.', '18:00:00', '20:25:00', '20', 85, 80);
INSERT INTO workshops VALUES(40, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '09:40:00', '13:45:00', '829', 150, 25);
INSERT INTO conferences VALUES ('Studenckie warsztaty programistów', 'Katowice', '3 Maja', '40-236', '23', 0.3);
INSERT INTO conference_days VALUES(16, '2018-09-06', 200)
INSERT INTO conference_prices VALUES(16, '2018-09-06', 180)
INSERT INTO conference_prices VALUES(16, '2018-08-23', 144.0)
INSERT INTO workshops VALUES(41, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '13:50:00', '17:05:00', '27', 105, 80);
INSERT INTO workshops VALUES(41, 'Wykład z programowania w języku C++', 'Brak opisu.', '16:20:00', '19:35:00', '2', 125, 60);
INSERT INTO workshops VALUES(41, 'Wykład z programowania w języku PHP', 'Brak opisu.', '15:30:00', '17:05:00', '1216', 130, 45);
INSERT INTO workshops VALUES(41, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '10:30:00', '14:35:00', '715', 70, 60);
INSERT INTO conference_days VALUES(16, '2018-09-07', 200)
INSERT INTO conference_prices VALUES(16, '2018-09-06', 190)
INSERT INTO conference_prices VALUES(16, '2018-08-23', 152.0)
INSERT INTO workshops VALUES(42, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '13:00:00', '17:05:00', '17', 70, 60);
INSERT INTO workshops VALUES(42, 'Wykład z programowania równoległego', 'Brak opisu.', '13:00:00', '14:35:00', '622', 80, 35);
INSERT INTO workshops VALUES(42, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '15:30:00', '17:55:00', '501', 180, 45);
INSERT INTO workshops VALUES(42, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '13:50:00', '17:05:00', '714', 90, 70);
INSERT INTO conference_days VALUES(16, '2018-09-08', 200)
INSERT INTO conference_prices VALUES(16, '2018-09-06', 420)
INSERT INTO conference_prices VALUES(16, '2018-08-23', 336.0)
INSERT INTO workshops VALUES(43, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '12:10:00', '15:25:00', '1009', 175, 15);
INSERT INTO workshops VALUES(43, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '13:50:00', '17:05:00', '129', 95, 75);
INSERT INTO workshops VALUES(43, 'Wykład z teorii kompilacji', 'Brak opisu.', '13:00:00', '15:25:00', '1220', 185, 20);
INSERT INTO workshops VALUES(43, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '18:00:00', '19:35:00', '1001', 195, 35);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie informatyczne', 'Warszawa', 'Mickiewicza', '02-495', '22', 0.9);
INSERT INTO conference_days VALUES(17, '2018-09-12', 200)
INSERT INTO conference_prices VALUES(17, '2018-09-12', 180)
INSERT INTO conference_prices VALUES(17, '2018-08-29', 144.0)
INSERT INTO workshops VALUES(44, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '11:20:00', '12:55:00', '1325', 195, 70);
INSERT INTO workshops VALUES(44, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '17:10:00', '18:45:00', '900', 185, 35);
INSERT INTO workshops VALUES(44, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '10:30:00', '13:45:00', '1105', 95, 60);
INSERT INTO conference_days VALUES(17, '2018-09-13', 200)
INSERT INTO conference_prices VALUES(17, '2018-09-12', 290)
INSERT INTO conference_prices VALUES(17, '2018-08-29', 232.0)
INSERT INTO workshops VALUES(45, 'Wykład z sieci neuronowych', 'Brak opisu.', '16:20:00', '17:55:00', '626', 180, 15);
INSERT INTO workshops VALUES(45, 'Wykład z programowania obiektowego', 'Brak opisu.', '13:50:00', '15:25:00', '311', 135, 60);
INSERT INTO workshops VALUES(45, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '13:00:00', '14:35:00', '108', 125, 75);
INSERT INTO workshops VALUES(45, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '18:00:00', '20:25:00', '113', 55, 80);
INSERT INTO workshops VALUES(45, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '12:10:00', '16:15:00', '708', 145, 30);
INSERT INTO workshops VALUES(45, 'Wykład z kryptografii', 'Brak opisu.', '15:30:00', '17:05:00', '1325', 130, 55);
INSERT INTO conference_days VALUES(17, '2018-09-14', 200)
INSERT INTO conference_prices VALUES(17, '2018-09-12', 410)
INSERT INTO conference_prices VALUES(17, '2018-08-29', 328.0)
INSERT INTO workshops VALUES(46, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '11:20:00', '12:55:00', '107', 160, 35);
INSERT INTO workshops VALUES(46, 'Wykład z kryptografii', 'Brak opisu.', '08:00:00', '12:05:00', '1009', 90, 20);
INSERT INTO workshops VALUES(46, 'Wykład z programowania równoległego', 'Brak opisu.', '18:00:00', '19:35:00', '428', 145, 95);
INSERT INTO conference_days VALUES(17, '2018-09-15', 200)
INSERT INTO conference_prices VALUES(17, '2018-09-12', 390)
INSERT INTO conference_prices VALUES(17, '2018-08-29', 312.0)
INSERT INTO workshops VALUES(47, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '11:20:00', '14:35:00', '407', 130, 15);
INSERT INTO workshops VALUES(47, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '08:00:00', '11:15:00', '218', 110, 65);
INSERT INTO workshops VALUES(47, 'Wykład z programowania w języku Python', 'Brak opisu.', '11:20:00', '14:35:00', '1311', 70, 40);
INSERT INTO workshops VALUES(47, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '13:50:00', '16:15:00', '401', 120, 45);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje informatyków', 'Lublin', 'Słowackiego', '20-410', '40', 0.75);
INSERT INTO conference_days VALUES(18, '2018-09-27', 200)
INSERT INTO conference_prices VALUES(18, '2018-09-27', 280)
INSERT INTO conference_prices VALUES(18, '2018-09-13', 224.0)
INSERT INTO workshops VALUES(48, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '14:40:00', '16:15:00', '1326', 55, 20);
INSERT INTO workshops VALUES(48, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '16:20:00', '18:45:00', '316', 120, 25);
INSERT INTO workshops VALUES(48, 'Wykład z architektur procesorów', 'Brak opisu.', '16:20:00', '18:45:00', '827', 150, 55);
INSERT INTO conference_days VALUES(18, '2018-09-28', 200)
INSERT INTO conference_prices VALUES(18, '2018-09-27', 380)
INSERT INTO conference_prices VALUES(18, '2018-09-13', 304.0)
INSERT INTO workshops VALUES(49, 'Wykład z algorytmów grafowych', 'Brak opisu.', '12:10:00', '15:25:00', '113', 145, 50);
INSERT INTO workshops VALUES(49, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '18:00:00', '19:35:00', '825', 160, 70);
INSERT INTO workshops VALUES(49, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '10:30:00', '12:55:00', '9', 145, 90);
INSERT INTO conference_days VALUES(18, '2018-09-29', 200)
INSERT INTO conference_prices VALUES(18, '2018-09-27', 280)
INSERT INTO conference_prices VALUES(18, '2018-09-13', 224.0)
INSERT INTO workshops VALUES(50, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '13:50:00', '17:55:00', '24', 195, 75);
INSERT INTO workshops VALUES(50, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '11:20:00', '15:25:00', '608', 110, 15);
INSERT INTO conferences VALUES ('Akademickie konferencje programistyczne', 'Kielce', 'Królewska', '25-511', '47', 1.0);
INSERT INTO conference_days VALUES(19, '2018-10-05', 200)
INSERT INTO conference_prices VALUES(19, '2018-10-05', 460)
INSERT INTO conference_prices VALUES(19, '2018-09-21', 368.0)
INSERT INTO workshops VALUES(51, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '13:50:00', '16:15:00', '1105', 105, 75);
INSERT INTO workshops VALUES(51, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '13:50:00', '15:25:00', '1013', 160, 40);
INSERT INTO workshops VALUES(51, 'Wykład z programowania w języku Julia', 'Brak opisu.', '08:50:00', '10:25:00', '905', 155, 55);
INSERT INTO workshops VALUES(51, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '10:30:00', '14:35:00', '328', 170, 15);
INSERT INTO conference_days VALUES(19, '2018-10-06', 200)
INSERT INTO conference_prices VALUES(19, '2018-10-05', 340)
INSERT INTO conference_prices VALUES(19, '2018-09-21', 272.0)
INSERT INTO workshops VALUES(52, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '17:10:00', '19:35:00', '1122', 190, 55);
INSERT INTO workshops VALUES(52, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '13:00:00', '14:35:00', '111', 115, 25);
INSERT INTO workshops VALUES(52, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '14:40:00', '16:15:00', '529', 115, 10);
INSERT INTO workshops VALUES(52, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '14:40:00', '18:45:00', '1216', 90, 25);
INSERT INTO conferences VALUES ('Studenckie forum kół naukowych', 'Wrocław', '3 Maja', '52-119', '35', 0.4);
INSERT INTO conference_days VALUES(20, '2018-10-11', 200)
INSERT INTO conference_prices VALUES(20, '2018-10-11', 420)
INSERT INTO conference_prices VALUES(20, '2018-09-27', 336.0)
INSERT INTO workshops VALUES(53, 'Wykład z kryptografii', 'Brak opisu.', '16:20:00', '19:35:00', '1009', 85, 20);
INSERT INTO workshops VALUES(53, 'Wykład z systemów ekspertowych', 'Brak opisu.', '13:00:00', '15:25:00', '1219', 165, 55);
INSERT INTO workshops VALUES(53, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '13:00:00', '14:35:00', '1300', 60, 95);
INSERT INTO workshops VALUES(53, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '13:50:00', '17:55:00', '810', 105, 35);
INSERT INTO conference_days VALUES(20, '2018-10-12', 200)
INSERT INTO conference_prices VALUES(20, '2018-10-11', 100)
INSERT INTO conference_prices VALUES(20, '2018-09-27', 80.0)
INSERT INTO workshops VALUES(54, 'Wykład z programowania równoległego', 'Brak opisu.', '13:50:00', '17:55:00', '1128', 180, 90);
INSERT INTO workshops VALUES(54, 'Wykład z systemów ekspertowych', 'Brak opisu.', '13:00:00', '15:25:00', '819', 150, 85);
INSERT INTO workshops VALUES(54, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '11:20:00', '14:35:00', '902', 160, 75);
INSERT INTO workshops VALUES(54, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '08:00:00', '09:35:00', '318', 140, 60);
INSERT INTO workshops VALUES(54, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '14:40:00', '18:45:00', '420', 140, 20);
INSERT INTO workshops VALUES(54, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '12:10:00', '14:35:00', '1323', 70, 15);
INSERT INTO conference_days VALUES(20, '2018-10-13', 200)
INSERT INTO conference_prices VALUES(20, '2018-10-11', 420)
INSERT INTO conference_prices VALUES(20, '2018-09-27', 336.0)
INSERT INTO workshops VALUES(55, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '10:30:00', '14:35:00', '1311', 115, 10);
INSERT INTO workshops VALUES(55, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '13:00:00', '17:05:00', '117', 130, 15);
INSERT INTO workshops VALUES(55, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '14:40:00', '17:05:00', '1010', 160, 95);
INSERT INTO workshops VALUES(55, 'Wykład z systemów operacyjnych', 'Brak opisu.', '13:00:00', '17:05:00', '1328', 100, 50);
INSERT INTO workshops VALUES(55, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '12:10:00', '15:25:00', '524', 65, 80);
INSERT INTO conferences VALUES ('Studenckie forum informatyczne', 'Katowice', '3 Maja', '40-236', '31', 0.55);
INSERT INTO conference_days VALUES(21, '2018-10-26', 200)
INSERT INTO conference_prices VALUES(21, '2018-10-26', 270)
INSERT INTO conference_prices VALUES(21, '2018-10-12', 216.0)
INSERT INTO workshops VALUES(56, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '17:10:00', '18:45:00', '1324', 85, 70);
INSERT INTO workshops VALUES(56, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '13:00:00', '15:25:00', '1014', 80, 35);
INSERT INTO workshops VALUES(56, 'Warsztaty z programowania równoległego', 'Brak opisu.', '13:50:00', '15:25:00', '1223', 75, 75);
INSERT INTO conference_days VALUES(21, '2018-10-27', 200)
INSERT INTO conference_prices VALUES(21, '2018-10-26', 140)
INSERT INTO conference_prices VALUES(21, '2018-10-12', 112.0)
INSERT INTO workshops VALUES(57, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '16:20:00', '19:35:00', '1422', 175, 30);
INSERT INTO workshops VALUES(57, 'Wykład z programowania w języku Python', 'Brak opisu.', '13:00:00', '17:05:00', '828', 190, 90);
INSERT INTO workshops VALUES(57, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '13:00:00', '15:25:00', '1416', 155, 75);
INSERT INTO workshops VALUES(57, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '11:20:00', '13:45:00', '1202', 190, 15);
INSERT INTO workshops VALUES(57, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '09:40:00', '12:55:00', '1425', 60, 40);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie informatyczne', 'Szczecin', '3 Maja', '71-627', '34', 0.9);
INSERT INTO conference_days VALUES(22, '2018-11-02', 200)
INSERT INTO conference_prices VALUES(22, '2018-11-02', 230)
INSERT INTO conference_prices VALUES(22, '2018-10-19', 184.0)
INSERT INTO workshops VALUES(58, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '15:30:00', '17:55:00', '716', 155, 85);
INSERT INTO workshops VALUES(58, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '11:20:00', '12:55:00', '1209', 165, 95);
INSERT INTO workshops VALUES(58, 'Wykład z programowania w języku Rust', 'Brak opisu.', '16:20:00', '20:25:00', '407', 105, 40);
INSERT INTO workshops VALUES(58, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '13:00:00', '14:35:00', '227', 140, 55);
INSERT INTO conference_days VALUES(22, '2018-11-03', 200)
INSERT INTO conference_prices VALUES(22, '2018-11-02', 320)
INSERT INTO conference_prices VALUES(22, '2018-10-19', 256.0)
INSERT INTO workshops VALUES(59, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '17:10:00', '20:25:00', '912', 175, 95);
INSERT INTO workshops VALUES(59, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '13:50:00', '16:15:00', '1419', 190, 65);
INSERT INTO workshops VALUES(59, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '16:20:00', '20:25:00', '620', 155, 25);
INSERT INTO workshops VALUES(59, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '08:50:00', '12:05:00', '1110', 130, 90);
INSERT INTO workshops VALUES(59, 'Wykład z algorytmów grafowych', 'Brak opisu.', '08:50:00', '11:15:00', '1325', 95, 95);
INSERT INTO workshops VALUES(59, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '15:30:00', '18:45:00', '510', 100, 20);
INSERT INTO conferences VALUES ('Międzyuczelniane forum informatyków', 'Kraków', 'Dębowa', '30-055', '21', 0.35);
INSERT INTO conference_days VALUES(23, '2018-11-08', 200)
INSERT INTO conference_prices VALUES(23, '2018-11-08', 210)
INSERT INTO conference_prices VALUES(23, '2018-10-25', 168.0)
INSERT INTO workshops VALUES(60, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '17:10:00', '20:25:00', '1314', 145, 50);
INSERT INTO workshops VALUES(60, 'Wykład z programowania w języku Julia', 'Brak opisu.', '12:10:00', '14:35:00', '1226', 190, 80);
INSERT INTO workshops VALUES(60, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '18:00:00', '19:35:00', '522', 55, 80);
INSERT INTO workshops VALUES(60, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '13:50:00', '17:05:00', '618', 60, 90);
INSERT INTO workshops VALUES(60, 'Wykład z programowania w języku Julia', 'Brak opisu.', '12:10:00', '14:35:00', '529', 170, 30);
INSERT INTO conference_days VALUES(23, '2018-11-09', 200)
INSERT INTO conference_prices VALUES(23, '2018-11-08', 150)
INSERT INTO conference_prices VALUES(23, '2018-10-25', 120.0)
INSERT INTO workshops VALUES(61, 'Warsztaty z kryptografii', 'Brak opisu.', '13:00:00', '16:15:00', '422', 190, 10);
INSERT INTO workshops VALUES(61, 'Wykład z kryptografii', 'Brak opisu.', '14:40:00', '17:55:00', '528', 50, 25);
INSERT INTO workshops VALUES(61, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '13:50:00', '17:05:00', '612', 155, 65);
INSERT INTO workshops VALUES(61, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '16:20:00', '17:55:00', '601', 195, 85);
INSERT INTO workshops VALUES(61, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '13:50:00', '17:55:00', '926', 115, 25);
INSERT INTO conference_days VALUES(23, '2018-11-10', 200)
INSERT INTO conference_prices VALUES(23, '2018-11-08', 450)
INSERT INTO conference_prices VALUES(23, '2018-10-25', 360.0)
INSERT INTO workshops VALUES(62, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '09:40:00', '11:15:00', '615', 130, 35);
INSERT INTO workshops VALUES(62, 'Wykład z programowania w języku Julia', 'Brak opisu.', '09:40:00', '12:05:00', '318', 190, 80);
INSERT INTO workshops VALUES(62, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '08:00:00', '11:15:00', '709', 65, 75);
INSERT INTO workshops VALUES(62, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '08:00:00', '10:25:00', '1', 110, 95);
INSERT INTO conferences VALUES ('Akademickie spotkanie programistyczne', 'Stalowa Wola', 'Słowackiego', '37-450', '19', 0.9);
INSERT INTO conference_days VALUES(24, '2018-11-16', 200)
INSERT INTO conference_prices VALUES(24, '2018-11-16', 230)
INSERT INTO conference_prices VALUES(24, '2018-11-02', 184.0)
INSERT INTO workshops VALUES(63, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '18:00:00', '19:35:00', '215', 180, 75);
INSERT INTO workshops VALUES(63, 'Wykład z programowania w języku Scala', 'Brak opisu.', '09:40:00', '13:45:00', '311', 100, 55);
INSERT INTO workshops VALUES(63, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '18:00:00', '20:25:00', '319', 175, 15);
INSERT INTO workshops VALUES(63, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '08:00:00', '11:15:00', '909', 110, 20);
INSERT INTO conference_days VALUES(24, '2018-11-17', 200)
INSERT INTO conference_prices VALUES(24, '2018-11-16', 340)
INSERT INTO conference_prices VALUES(24, '2018-11-02', 272.0)
INSERT INTO workshops VALUES(64, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '18:00:00', '20:25:00', '1414', 120, 20);
INSERT INTO workshops VALUES(64, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '14:40:00', '16:15:00', '722', 65, 25);
INSERT INTO workshops VALUES(64, 'Wykład z algorytmów grafowych', 'Brak opisu.', '14:40:00', '16:15:00', '1417', 185, 60);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistów', 'Poznań', 'Długa', '61-740', '44', 0.75);
INSERT INTO conference_days VALUES(25, '2018-11-23', 200)
INSERT INTO conference_prices VALUES(25, '2018-11-23', 270)
INSERT INTO conference_prices VALUES(25, '2018-11-09', 216.0)
INSERT INTO workshops VALUES(65, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '08:50:00', '12:05:00', '22', 65, 10);
INSERT INTO workshops VALUES(65, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '12:10:00', '15:25:00', '1009', 165, 35);
INSERT INTO workshops VALUES(65, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '17:10:00', '19:35:00', '24', 110, 75);
INSERT INTO workshops VALUES(65, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '08:50:00', '12:05:00', '1020', 105, 55);
INSERT INTO workshops VALUES(65, 'Wykład z programowania w języku C++', 'Brak opisu.', '17:10:00', '18:45:00', '700', 125, 65);
INSERT INTO conference_days VALUES(25, '2018-11-24', 200)
INSERT INTO conference_prices VALUES(25, '2018-11-23', 360)
INSERT INTO conference_prices VALUES(25, '2018-11-09', 288.0)
INSERT INTO workshops VALUES(66, 'Wykład z uczenia maszynowego', 'Brak opisu.', '09:40:00', '12:55:00', '326', 55, 95);
INSERT INTO workshops VALUES(66, 'Warsztaty z architektur procesorów', 'Brak opisu.', '11:20:00', '15:25:00', '913', 145, 90);
INSERT INTO workshops VALUES(66, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '12:10:00', '13:45:00', '1111', 55, 10);
INSERT INTO conferences VALUES ('Studenckie forum informatyków', 'Kraków', 'Dębowa', '30-055', '30', 0.9);
INSERT INTO conference_days VALUES(26, '2018-11-29', 200)
INSERT INTO conference_prices VALUES(26, '2018-11-29', 450)
INSERT INTO conference_prices VALUES(26, '2018-11-15', 360.0)
INSERT INTO workshops VALUES(67, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '11:20:00', '13:45:00', '919', 145, 65);
INSERT INTO workshops VALUES(67, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '08:50:00', '12:55:00', '326', 85, 75);
INSERT INTO workshops VALUES(67, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '16:20:00', '19:35:00', '703', 85, 35);
INSERT INTO workshops VALUES(67, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '17:10:00', '20:25:00', '1225', 65, 50);
INSERT INTO conference_days VALUES(26, '2018-11-30', 200)
INSERT INTO conference_prices VALUES(26, '2018-11-29', 450)
INSERT INTO conference_prices VALUES(26, '2018-11-15', 360.0)
INSERT INTO workshops VALUES(68, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '13:50:00', '15:25:00', '123', 150, 35);
INSERT INTO workshops VALUES(68, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '13:50:00', '17:05:00', '714', 140, 35);
INSERT INTO workshops VALUES(68, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '14:40:00', '17:55:00', '1203', 115, 10);
INSERT INTO workshops VALUES(68, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '08:00:00', '09:35:00', '125', 90, 50);
INSERT INTO conference_days VALUES(26, '2018-12-01', 200)
INSERT INTO conference_prices VALUES(26, '2018-11-29', 350)
INSERT INTO conference_prices VALUES(26, '2018-11-15', 280.0)
INSERT INTO workshops VALUES(69, 'Wykład z programowania w języku Rust', 'Brak opisu.', '13:50:00', '15:25:00', '1213', 175, 90);
INSERT INTO workshops VALUES(69, 'Wykład z architektur procesorów', 'Brak opisu.', '17:10:00', '19:35:00', '1006', 50, 10);
INSERT INTO workshops VALUES(69, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '14:40:00', '18:45:00', '602', 60, 15);
INSERT INTO conferences VALUES ('Akademickie konferencje kół naukowych', 'Kielce', 'Słowackiego', '25-511', '45', 0.8);
INSERT INTO conference_days VALUES(27, '2018-12-13', 200)
INSERT INTO conference_prices VALUES(27, '2018-12-13', 110)
INSERT INTO conference_prices VALUES(27, '2018-11-29', 88.0)
INSERT INTO workshops VALUES(70, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '18:00:00', '20:25:00', '812', 110, 60);
INSERT INTO workshops VALUES(70, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '11:20:00', '13:45:00', '322', 130, 15);
INSERT INTO workshops VALUES(70, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '12:10:00', '16:15:00', '407', 60, 90);
INSERT INTO workshops VALUES(70, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '16:20:00', '19:35:00', '717', 180, 60);
INSERT INTO workshops VALUES(70, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '09:40:00', '11:15:00', '604', 70, 45);
INSERT INTO conference_days VALUES(27, '2018-12-14', 200)
INSERT INTO conference_prices VALUES(27, '2018-12-13', 120)
INSERT INTO conference_prices VALUES(27, '2018-11-29', 96.0)
INSERT INTO workshops VALUES(71, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '08:00:00', '09:35:00', '611', 170, 15);
INSERT INTO workshops VALUES(71, 'Wykład z programowania w języku Julia', 'Brak opisu.', '11:20:00', '14:35:00', '901', 185, 45);
INSERT INTO workshops VALUES(71, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '13:50:00', '15:25:00', '215', 175, 10);
INSERT INTO workshops VALUES(71, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '16:20:00', '17:55:00', '809', 110, 85);
INSERT INTO workshops VALUES(71, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '11:20:00', '15:25:00', '1021', 160, 65);
INSERT INTO conference_days VALUES(27, '2018-12-15', 200)
INSERT INTO conference_prices VALUES(27, '2018-12-13', 360)
INSERT INTO conference_prices VALUES(27, '2018-11-29', 288.0)
INSERT INTO workshops VALUES(72, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '13:00:00', '17:05:00', '1211', 120, 45);
INSERT INTO workshops VALUES(72, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '10:30:00', '14:35:00', '1111', 145, 10);
INSERT INTO workshops VALUES(72, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '12:10:00', '14:35:00', '316', 55, 30);
INSERT INTO conferences VALUES ('Studenckie warsztaty miłośników programowania', 'Wrocław', 'Mickiewicza', '52-119', '4', 0.0);
INSERT INTO conference_days VALUES(28, '2018-12-27', 200)
INSERT INTO conference_prices VALUES(28, '2018-12-27', 220)
INSERT INTO conference_prices VALUES(28, '2018-12-13', 176.0)
INSERT INTO workshops VALUES(73, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '08:50:00', '12:55:00', '1425', 165, 50);
INSERT INTO workshops VALUES(73, 'Wykład z architektur procesorów', 'Brak opisu.', '08:00:00', '11:15:00', '418', 115, 75);
INSERT INTO workshops VALUES(73, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '11:20:00', '15:25:00', '6', 115, 70);
INSERT INTO workshops VALUES(73, 'Wykład z programowania obiektowego', 'Brak opisu.', '11:20:00', '12:55:00', '1423', 135, 70);
INSERT INTO workshops VALUES(73, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '13:50:00', '17:05:00', '1209', 55, 25);
INSERT INTO conference_days VALUES(28, '2018-12-28', 200)
INSERT INTO conference_prices VALUES(28, '2018-12-27', 270)
INSERT INTO conference_prices VALUES(28, '2018-12-13', 216.0)
INSERT INTO workshops VALUES(74, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '08:00:00', '12:05:00', '1022', 65, 95);
INSERT INTO workshops VALUES(74, 'Wykład z programowania w języku Rust', 'Brak opisu.', '16:20:00', '18:45:00', '411', 65, 45);
INSERT INTO workshops VALUES(74, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '17:10:00', '19:35:00', '324', 170, 75);
INSERT INTO workshops VALUES(74, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '08:50:00', '11:15:00', '229', 60, 35);
INSERT INTO workshops VALUES(74, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '15:30:00', '18:45:00', '1216', 80, 25);
INSERT INTO conference_days VALUES(28, '2018-12-29', 200)
INSERT INTO conference_prices VALUES(28, '2018-12-27', 290)
INSERT INTO conference_prices VALUES(28, '2018-12-13', 232.0)
INSERT INTO workshops VALUES(75, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '16:20:00', '20:25:00', '1206', 85, 15);
INSERT INTO workshops VALUES(75, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '16:20:00', '19:35:00', '207', 135, 45);
INSERT INTO workshops VALUES(75, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '14:40:00', '18:45:00', '322', 85, 20);
INSERT INTO workshops VALUES(75, 'Warsztaty z architektur procesorów', 'Brak opisu.', '13:50:00', '15:25:00', '1224', 110, 95);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie programistów', 'Poznań', '3 Maja', '61-740', '42', 0.5);
INSERT INTO conference_days VALUES(29, '2019-01-10', 200)
INSERT INTO conference_prices VALUES(29, '2019-01-10', 320)
INSERT INTO conference_prices VALUES(29, '2018-12-27', 256.0)
INSERT INTO workshops VALUES(76, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '18:00:00', '20:25:00', '701', 155, 95);
INSERT INTO workshops VALUES(76, 'Wykład z programowania obiektowego', 'Brak opisu.', '14:40:00', '17:55:00', '725', 70, 55);
INSERT INTO conference_days VALUES(29, '2019-01-11', 200)
INSERT INTO conference_prices VALUES(29, '2019-01-10', 250)
INSERT INTO conference_prices VALUES(29, '2018-12-27', 200.0)
INSERT INTO workshops VALUES(77, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '08:00:00', '10:25:00', '121', 65, 55);
INSERT INTO workshops VALUES(77, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '13:00:00', '16:15:00', '510', 70, 25);
INSERT INTO workshops VALUES(77, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '12:10:00', '14:35:00', '1105', 65, 85);
INSERT INTO conference_days VALUES(29, '2019-01-12', 200)
INSERT INTO conference_prices VALUES(29, '2019-01-10', 360)
INSERT INTO conference_prices VALUES(29, '2018-12-27', 288.0)
INSERT INTO workshops VALUES(78, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '08:50:00', '10:25:00', '805', 95, 95);
INSERT INTO workshops VALUES(78, 'Wykład z kryptografii', 'Brak opisu.', '18:00:00', '19:35:00', '109', 70, 30);
INSERT INTO workshops VALUES(78, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '08:50:00', '12:55:00', '101', 85, 75);
INSERT INTO conferences VALUES ('Akademickie spotkanie miłośników programowania', 'Poznań', 'Słowackiego', '61-740', '45', 0.5);
INSERT INTO conference_days VALUES(30, '2019-01-25', 200)
INSERT INTO conference_prices VALUES(30, '2019-01-25', 370)
INSERT INTO conference_prices VALUES(30, '2019-01-11', 296.0)
INSERT INTO workshops VALUES(79, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '14:40:00', '17:05:00', '915', 115, 65);
INSERT INTO workshops VALUES(79, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '10:30:00', '13:45:00', '802', 105, 75);
INSERT INTO workshops VALUES(79, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '13:50:00', '17:55:00', '529', 170, 70);
INSERT INTO workshops VALUES(79, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '16:20:00', '19:35:00', '1207', 185, 50);
INSERT INTO workshops VALUES(79, 'Wykład z architektur procesorów', 'Brak opisu.', '08:00:00', '11:15:00', '1014', 180, 25);
INSERT INTO conference_days VALUES(30, '2019-01-26', 200)
INSERT INTO conference_prices VALUES(30, '2019-01-25', 310)
INSERT INTO conference_prices VALUES(30, '2019-01-11', 248.0)
INSERT INTO workshops VALUES(80, 'Wykład z programowania w języku C++', 'Brak opisu.', '15:30:00', '17:05:00', '318', 155, 85);
INSERT INTO workshops VALUES(80, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '10:30:00', '14:35:00', '808', 165, 25);
INSERT INTO workshops VALUES(80, 'Wykład z uczenia maszynowego', 'Brak opisu.', '18:00:00', '20:25:00', '707', 195, 80);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie informatyczne', 'Wrocław', 'Mickiewicza', '52-119', '33', 0.3);
INSERT INTO conference_days VALUES(31, '2019-01-31', 200)
INSERT INTO conference_prices VALUES(31, '2019-01-31', 120)
INSERT INTO conference_prices VALUES(31, '2019-01-17', 96.0)
INSERT INTO workshops VALUES(81, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '15:30:00', '17:05:00', '1413', 100, 15);
INSERT INTO workshops VALUES(81, 'Wykład z programowania w języku C++', 'Brak opisu.', '17:10:00', '19:35:00', '510', 75, 60);
INSERT INTO workshops VALUES(81, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '09:40:00', '12:55:00', '220', 170, 55);
INSERT INTO workshops VALUES(81, 'Wykład z programowania w języku PHP', 'Brak opisu.', '13:00:00', '14:35:00', '203', 90, 80);
INSERT INTO conference_days VALUES(31, '2019-02-01', 200)
INSERT INTO conference_prices VALUES(31, '2019-01-31', 410)
INSERT INTO conference_prices VALUES(31, '2019-01-17', 328.0)
INSERT INTO workshops VALUES(82, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '13:00:00', '15:25:00', '1012', 55, 85);
INSERT INTO workshops VALUES(82, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '16:20:00', '19:35:00', '427', 90, 75);
INSERT INTO workshops VALUES(82, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '15:30:00', '19:35:00', '1309', 160, 55);
INSERT INTO workshops VALUES(82, 'Wykład z programowania w języku Rust', 'Brak opisu.', '10:30:00', '12:05:00', '507', 160, 30);
INSERT INTO workshops VALUES(82, 'Warsztaty z kryptografii', 'Brak opisu.', '08:00:00', '11:15:00', '106', 110, 25);
INSERT INTO conference_days VALUES(31, '2019-02-02', 200)
INSERT INTO conference_prices VALUES(31, '2019-01-31', 470)
INSERT INTO conference_prices VALUES(31, '2019-01-17', 376.0)
INSERT INTO workshops VALUES(83, 'Wykład z grafiki komputerowej', 'Brak opisu.', '09:40:00', '12:05:00', '1212', 90, 85);
INSERT INTO workshops VALUES(83, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '10:30:00', '13:45:00', '1203', 175, 10);
INSERT INTO workshops VALUES(83, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '12:10:00', '14:35:00', '1018', 85, 60);
INSERT INTO conferences VALUES ('Akademickie konferencje informatyczne', 'Rzeszów', '3 Maja', '35-030', '13', 0.5);
INSERT INTO conference_days VALUES(32, '2019-02-21', 200)
INSERT INTO conference_prices VALUES(32, '2019-02-21', 380)
INSERT INTO conference_prices VALUES(32, '2019-02-07', 304.0)
INSERT INTO workshops VALUES(84, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '13:00:00', '17:05:00', '804', 185, 60);
INSERT INTO workshops VALUES(84, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '11:20:00', '12:55:00', '1006', 125, 70);
INSERT INTO workshops VALUES(84, 'Wykład z kryptografii', 'Brak opisu.', '15:30:00', '17:55:00', '617', 85, 80);
INSERT INTO conference_days VALUES(32, '2019-02-22', 200)
INSERT INTO conference_prices VALUES(32, '2019-02-21', 330)
INSERT INTO conference_prices VALUES(32, '2019-02-07', 264.0)
INSERT INTO workshops VALUES(85, 'Wykład z architektur procesorów', 'Brak opisu.', '13:00:00', '14:35:00', '1108', 160, 15);
INSERT INTO workshops VALUES(85, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '18:00:00', '20:25:00', '822', 95, 10);
INSERT INTO workshops VALUES(85, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '14:40:00', '17:05:00', '901', 65, 10);
INSERT INTO workshops VALUES(85, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '12:10:00', '15:25:00', '612', 80, 10);
INSERT INTO workshops VALUES(85, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '10:30:00', '14:35:00', '315', 135, 70);
INSERT INTO conference_days VALUES(32, '2019-02-23', 200)
INSERT INTO conference_prices VALUES(32, '2019-02-21', 220)
INSERT INTO conference_prices VALUES(32, '2019-02-07', 176.0)
INSERT INTO workshops VALUES(86, 'Wykład z uczenia maszynowego', 'Brak opisu.', '18:00:00', '19:35:00', '320', 70, 15);
INSERT INTO workshops VALUES(86, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '16:20:00', '18:45:00', '1407', 150, 75);
INSERT INTO workshops VALUES(86, 'Wykład z programowania w języku Python', 'Brak opisu.', '18:00:00', '20:25:00', '700', 160, 60);
INSERT INTO workshops VALUES(86, 'Wykład z programowania w języku PHP', 'Brak opisu.', '09:40:00', '12:55:00', '622', 145, 20);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie informatyczne', 'Stalowa Wola', 'Wojska Polskiego', '37-450', '15', 0.6);
INSERT INTO conference_days VALUES(33, '2019-02-28', 200)
INSERT INTO conference_prices VALUES(33, '2019-02-28', 420)
INSERT INTO conference_prices VALUES(33, '2019-02-14', 336.0)
INSERT INTO workshops VALUES(87, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '16:20:00', '17:55:00', '512', 70, 50);
INSERT INTO workshops VALUES(87, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '13:50:00', '15:25:00', '1115', 85, 90);
INSERT INTO workshops VALUES(87, 'Wykład z programowania w języku Python', 'Brak opisu.', '13:00:00', '16:15:00', '918', 70, 65);
INSERT INTO workshops VALUES(87, 'Wykład z programowania obiektowego', 'Brak opisu.', '10:30:00', '12:55:00', '821', 60, 90);
INSERT INTO workshops VALUES(87, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '18:00:00', '19:35:00', '100', 130, 45);
INSERT INTO workshops VALUES(87, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '09:40:00', '12:05:00', '1122', 160, 60);
INSERT INTO conference_days VALUES(33, '2019-03-01', 200)
INSERT INTO conference_prices VALUES(33, '2019-02-28', 320)
INSERT INTO conference_prices VALUES(33, '2019-02-14', 256.0)
INSERT INTO workshops VALUES(88, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '15:30:00', '19:35:00', '13', 70, 80);
INSERT INTO workshops VALUES(88, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '16:20:00', '17:55:00', '319', 60, 35);
INSERT INTO workshops VALUES(88, 'Wykład z systemów operacyjnych', 'Brak opisu.', '11:20:00', '15:25:00', '504', 115, 45);
INSERT INTO workshops VALUES(88, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '08:50:00', '12:55:00', '205', 125, 90);
INSERT INTO conference_days VALUES(33, '2019-03-02', 200)
INSERT INTO conference_prices VALUES(33, '2019-02-28', 230)
INSERT INTO conference_prices VALUES(33, '2019-02-14', 184.0)
INSERT INTO workshops VALUES(89, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '10:30:00', '13:45:00', '209', 150, 45);
INSERT INTO workshops VALUES(89, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '16:20:00', '20:25:00', '116', 180, 90);
INSERT INTO workshops VALUES(89, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '18:00:00', '20:25:00', '822', 80, 80);
INSERT INTO workshops VALUES(89, 'Wykład z programowania w języku PHP', 'Brak opisu.', '08:50:00', '12:05:00', '1229', 170, 50);
INSERT INTO conferences VALUES ('Międzyuczelniane forum miłośników programowania', 'Stalowa Wola', 'Lipowa', '37-450', '17', 0.65);
INSERT INTO conference_days VALUES(34, '2019-03-06', 200)
INSERT INTO conference_prices VALUES(34, '2019-03-06', 120)
INSERT INTO conference_prices VALUES(34, '2019-02-20', 96.0)
INSERT INTO workshops VALUES(90, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '12:10:00', '13:45:00', '201', 145, 50);
INSERT INTO workshops VALUES(90, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '09:40:00', '11:15:00', '615', 85, 75);
INSERT INTO workshops VALUES(90, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '14:40:00', '16:15:00', '418', 125, 20);
INSERT INTO workshops VALUES(90, 'Wykład z programowania w języku Rust', 'Brak opisu.', '13:50:00', '17:55:00', '720', 80, 85);
INSERT INTO conference_days VALUES(34, '2019-03-07', 200)
INSERT INTO conference_prices VALUES(34, '2019-03-06', 330)
INSERT INTO conference_prices VALUES(34, '2019-02-20', 264.0)
INSERT INTO workshops VALUES(91, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '10:30:00', '12:05:00', '303', 80, 30);
INSERT INTO workshops VALUES(91, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '10:30:00', '12:05:00', '1103', 150, 35);
INSERT INTO workshops VALUES(91, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '18:00:00', '20:25:00', '903', 145, 40);
INSERT INTO workshops VALUES(91, 'Wykład z programowania obiektowego', 'Brak opisu.', '09:40:00', '13:45:00', '626', 135, 50);
INSERT INTO conference_days VALUES(34, '2019-03-08', 200)
INSERT INTO conference_prices VALUES(34, '2019-03-06', 290)
INSERT INTO conference_prices VALUES(34, '2019-02-20', 232.0)
INSERT INTO workshops VALUES(92, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '10:30:00', '13:45:00', '1420', 175, 50);
INSERT INTO workshops VALUES(92, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '10:30:00', '14:35:00', '1009', 65, 45);
INSERT INTO workshops VALUES(92, 'Wykład z programowania w języku PHP', 'Brak opisu.', '18:00:00', '20:25:00', '210', 80, 70);
INSERT INTO workshops VALUES(92, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '15:30:00', '17:05:00', '928', 50, 30);
INSERT INTO workshops VALUES(92, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '14:40:00', '16:15:00', '317', 85, 70);
INSERT INTO conference_days VALUES(34, '2019-03-09', 200)
INSERT INTO conference_prices VALUES(34, '2019-03-06', 320)
INSERT INTO conference_prices VALUES(34, '2019-02-20', 256.0)
INSERT INTO workshops VALUES(93, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '13:00:00', '16:15:00', '424', 105, 45);
INSERT INTO workshops VALUES(93, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '16:20:00', '19:35:00', '421', 160, 45);
INSERT INTO workshops VALUES(93, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '11:20:00', '14:35:00', '1126', 100, 85);
INSERT INTO workshops VALUES(93, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '09:40:00', '12:05:00', '907', 95, 95);
INSERT INTO workshops VALUES(93, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '11:20:00', '15:25:00', '1206', 100, 55);
INSERT INTO workshops VALUES(93, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '15:30:00', '19:35:00', '418', 130, 35);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie kół naukowych', 'Katowice', 'Lipowa', '40-236', '45', 0.7);
INSERT INTO conference_days VALUES(35, '2019-03-15', 200)
INSERT INTO conference_prices VALUES(35, '2019-03-15', 430)
INSERT INTO conference_prices VALUES(35, '2019-03-01', 344.0)
INSERT INTO workshops VALUES(94, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '17:10:00', '20:25:00', '600', 95, 15);
INSERT INTO workshops VALUES(94, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '16:20:00', '17:55:00', '209', 110, 75);
INSERT INTO workshops VALUES(94, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '18:00:00', '20:25:00', '509', 180, 50);
INSERT INTO conference_days VALUES(35, '2019-03-16', 200)
INSERT INTO conference_prices VALUES(35, '2019-03-15', 400)
INSERT INTO conference_prices VALUES(35, '2019-03-01', 320.0)
INSERT INTO workshops VALUES(95, 'Warsztaty z programowania równoległego', 'Brak opisu.', '08:50:00', '12:55:00', '329', 195, 35);
INSERT INTO workshops VALUES(95, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '08:00:00', '09:35:00', '104', 170, 15);
INSERT INTO workshops VALUES(95, 'Wykład z programowania równoległego', 'Brak opisu.', '12:10:00', '15:25:00', '1414', 175, 35);
INSERT INTO workshops VALUES(95, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '17:10:00', '19:35:00', '922', 80, 70);
INSERT INTO conferences VALUES ('Akademickie konferencje kół naukowych', 'Lublin', '3 Maja', '20-410', '28', 0.0);
INSERT INTO conference_days VALUES(36, '2019-04-05', 200)
INSERT INTO conference_prices VALUES(36, '2019-04-05', 150)
INSERT INTO conference_prices VALUES(36, '2019-03-22', 120.0)
INSERT INTO workshops VALUES(96, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '12:10:00', '13:45:00', '801', 95, 60);
INSERT INTO workshops VALUES(96, 'Wykład z programowania w języku Rust', 'Brak opisu.', '08:50:00', '12:55:00', '222', 100, 10);
INSERT INTO workshops VALUES(96, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '08:50:00', '10:25:00', '1329', 125, 55);
INSERT INTO workshops VALUES(96, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '10:30:00', '14:35:00', '623', 175, 60);
INSERT INTO workshops VALUES(96, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '12:10:00', '15:25:00', '728', 195, 85);
INSERT INTO conference_days VALUES(36, '2019-04-06', 200)
INSERT INTO conference_prices VALUES(36, '2019-04-05', 260)
INSERT INTO conference_prices VALUES(36, '2019-03-22', 208.0)
INSERT INTO workshops VALUES(97, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '13:00:00', '14:35:00', '426', 75, 55);
INSERT INTO workshops VALUES(97, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '08:00:00', '10:25:00', '526', 105, 20);
INSERT INTO workshops VALUES(97, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '14:40:00', '17:05:00', '606', 195, 15);
INSERT INTO workshops VALUES(97, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '09:40:00', '12:55:00', '219', 165, 20);
INSERT INTO workshops VALUES(97, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '11:20:00', '12:55:00', '410', 105, 75);
INSERT INTO conferences VALUES ('Akademickie spotkanie miłośników programowania', 'Kielce', 'Armii Krajowej', '25-511', '7', 0.1);
INSERT INTO conference_days VALUES(37, '2019-04-19', 200)
INSERT INTO conference_prices VALUES(37, '2019-04-19', 160)
INSERT INTO conference_prices VALUES(37, '2019-04-05', 128.0)
INSERT INTO workshops VALUES(98, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '18:00:00', '20:25:00', '202', 190, 10);
INSERT INTO workshops VALUES(98, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '16:20:00', '19:35:00', '13', 80, 65);
INSERT INTO workshops VALUES(98, 'Wykład z programowania równoległego', 'Brak opisu.', '12:10:00', '16:15:00', '5', 160, 45);
INSERT INTO workshops VALUES(98, 'Wykład z sieci neuronowych', 'Brak opisu.', '10:30:00', '12:55:00', '20', 70, 30);
INSERT INTO conference_days VALUES(37, '2019-04-20', 200)
INSERT INTO conference_prices VALUES(37, '2019-04-19', 240)
INSERT INTO conference_prices VALUES(37, '2019-04-05', 192.0)
INSERT INTO workshops VALUES(99, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '11:20:00', '13:45:00', '706', 135, 20);
INSERT INTO workshops VALUES(99, 'Wykład z uczenia maszynowego', 'Brak opisu.', '15:30:00', '18:45:00', '1119', 140, 80);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie informatyków', 'Katowice', 'Długa', '40-236', '14', 0.7);
INSERT INTO conference_days VALUES(38, '2019-05-10', 200)
INSERT INTO conference_prices VALUES(38, '2019-05-10', 350)
INSERT INTO conference_prices VALUES(38, '2019-04-26', 280.0)
INSERT INTO workshops VALUES(100, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '18:00:00', '19:35:00', '2', 80, 45);
INSERT INTO workshops VALUES(100, 'Wykład z programowania równoległego', 'Brak opisu.', '17:10:00', '19:35:00', '1221', 185, 80);
INSERT INTO workshops VALUES(100, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '11:20:00', '13:45:00', '307', 105, 40);
INSERT INTO conference_days VALUES(38, '2019-05-11', 200)
INSERT INTO conference_prices VALUES(38, '2019-05-10', 320)
INSERT INTO conference_prices VALUES(38, '2019-04-26', 256.0)
INSERT INTO workshops VALUES(101, 'Wykład z programowania w języku Julia', 'Brak opisu.', '14:40:00', '17:55:00', '922', 100, 10);
INSERT INTO workshops VALUES(101, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '15:30:00', '18:45:00', '603', 160, 95);
INSERT INTO workshops VALUES(101, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '18:00:00', '19:35:00', '820', 70, 80);
INSERT INTO conferences VALUES ('Studenckie warsztaty informatyczne', 'Kraków', 'Mickiewicza', '30-055', '33', 0.5);
INSERT INTO conference_days VALUES(39, '2019-05-17', 200)
INSERT INTO conference_prices VALUES(39, '2019-05-17', 350)
INSERT INTO conference_prices VALUES(39, '2019-05-03', 280.0)
INSERT INTO workshops VALUES(102, 'Warsztaty z programowania równoległego', 'Brak opisu.', '14:40:00', '16:15:00', '1315', 135, 25);
INSERT INTO workshops VALUES(102, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '10:30:00', '13:45:00', '321', 80, 15);
INSERT INTO workshops VALUES(102, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '16:20:00', '20:25:00', '623', 125, 50);
INSERT INTO conference_days VALUES(39, '2019-05-18', 200)
INSERT INTO conference_prices VALUES(39, '2019-05-17', 460)
INSERT INTO conference_prices VALUES(39, '2019-05-03', 368.0)
INSERT INTO workshops VALUES(103, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '16:20:00', '20:25:00', '707', 165, 15);
INSERT INTO workshops VALUES(103, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '10:30:00', '12:55:00', '304', 65, 65);
INSERT INTO conferences VALUES ('Międzyuczelniane forum miłośników programowania', 'Kielce', 'Armii Krajowej', '25-511', '23', 0.35);
INSERT INTO conference_days VALUES(40, '2019-05-23', 200)
INSERT INTO conference_prices VALUES(40, '2019-05-23', 160)
INSERT INTO conference_prices VALUES(40, '2019-05-09', 128.0)
INSERT INTO workshops VALUES(104, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '14:40:00', '17:55:00', '512', 140, 60);
INSERT INTO workshops VALUES(104, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '08:50:00', '10:25:00', '18', 60, 90);
INSERT INTO workshops VALUES(104, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '17:10:00', '18:45:00', '221', 160, 65);
INSERT INTO workshops VALUES(104, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '13:00:00', '14:35:00', '1008', 145, 35);
INSERT INTO workshops VALUES(104, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '13:50:00', '15:25:00', '621', 180, 10);
INSERT INTO conference_days VALUES(40, '2019-05-24', 200)
INSERT INTO conference_prices VALUES(40, '2019-05-23', 180)
INSERT INTO conference_prices VALUES(40, '2019-05-09', 144.0)
INSERT INTO workshops VALUES(105, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '09:40:00', '12:05:00', '925', 55, 90);
INSERT INTO workshops VALUES(105, 'Wykład z programowania w języku Java', 'Brak opisu.', '17:10:00', '20:25:00', '405', 185, 20);
INSERT INTO conference_days VALUES(40, '2019-05-25', 200)
INSERT INTO conference_prices VALUES(40, '2019-05-23', 230)
INSERT INTO conference_prices VALUES(40, '2019-05-09', 184.0)
INSERT INTO workshops VALUES(106, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '18:00:00', '20:25:00', '423', 160, 10);
INSERT INTO workshops VALUES(106, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '17:10:00', '20:25:00', '1319', 195, 95);
INSERT INTO workshops VALUES(106, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '12:10:00', '14:35:00', '824', 185, 50);
INSERT INTO workshops VALUES(106, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '14:40:00', '17:55:00', '1114', 195, 40);
INSERT INTO workshops VALUES(106, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '13:00:00', '14:35:00', '1416', 175, 25);
INSERT INTO conferences VALUES ('Akademickie konferencje kół naukowych', 'Stalowa Wola', 'Armii Krajowej', '37-450', '15', 0.85);
INSERT INTO conference_days VALUES(41, '2019-06-14', 200)
INSERT INTO conference_prices VALUES(41, '2019-06-14', 450)
INSERT INTO conference_prices VALUES(41, '2019-05-31', 360.0)
INSERT INTO workshops VALUES(107, 'Wykład z uczenia maszynowego', 'Brak opisu.', '11:20:00', '15:25:00', '511', 50, 55);
INSERT INTO workshops VALUES(107, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '12:10:00', '16:15:00', '911', 145, 65);
INSERT INTO workshops VALUES(107, 'Wykład z programowania w języku PHP', 'Brak opisu.', '08:00:00', '09:35:00', '626', 85, 95);
INSERT INTO conference_days VALUES(41, '2019-06-15', 200)
INSERT INTO conference_prices VALUES(41, '2019-06-14', 280)
INSERT INTO conference_prices VALUES(41, '2019-05-31', 224.0)
INSERT INTO workshops VALUES(108, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '08:50:00', '12:05:00', '315', 80, 30);
INSERT INTO workshops VALUES(108, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '15:30:00', '17:55:00', '423', 135, 70);
INSERT INTO workshops VALUES(108, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '13:50:00', '17:55:00', '27', 60, 60);
INSERT INTO workshops VALUES(108, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '13:00:00', '16:15:00', '1008', 150, 80);
INSERT INTO workshops VALUES(108, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '12:10:00', '16:15:00', '1023', 50, 90);
INSERT INTO conferences VALUES ('Ademickie zebranie kół naukowych', 'Poznań', 'Wojska Polskiego', '61-740', '19', 0.1);
INSERT INTO conference_days VALUES(42, '2019-06-27', 200)
INSERT INTO conference_prices VALUES(42, '2019-06-27', 460)
INSERT INTO conference_prices VALUES(42, '2019-06-13', 368.0)
INSERT INTO workshops VALUES(109, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '12:10:00', '16:15:00', '13', 170, 40);
INSERT INTO workshops VALUES(109, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '17:10:00', '20:25:00', '723', 95, 90);
INSERT INTO workshops VALUES(109, 'Wykład z programowania w języku Scala', 'Brak opisu.', '10:30:00', '14:35:00', '1209', 50, 50);
INSERT INTO workshops VALUES(109, 'Wykład z architektur procesorów', 'Brak opisu.', '16:20:00', '17:55:00', '812', 120, 15);
INSERT INTO conference_days VALUES(42, '2019-06-28', 200)
INSERT INTO conference_prices VALUES(42, '2019-06-27', 270)
INSERT INTO conference_prices VALUES(42, '2019-06-13', 216.0)
INSERT INTO workshops VALUES(110, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '09:40:00', '12:55:00', '509', 55, 30);
INSERT INTO workshops VALUES(110, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '08:50:00', '12:05:00', '804', 145, 50);
INSERT INTO workshops VALUES(110, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '18:00:00', '19:35:00', '926', 175, 30);
INSERT INTO workshops VALUES(110, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '14:40:00', '18:45:00', '325', 95, 40);
INSERT INTO conference_days VALUES(42, '2019-06-29', 200)
INSERT INTO conference_prices VALUES(42, '2019-06-27', 240)
INSERT INTO conference_prices VALUES(42, '2019-06-13', 192.0)
INSERT INTO workshops VALUES(111, 'Wykład z programowania w języku Python', 'Brak opisu.', '18:00:00', '20:25:00', '619', 50, 80);
INSERT INTO workshops VALUES(111, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '16:20:00', '18:45:00', '5', 135, 15);
INSERT INTO workshops VALUES(111, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '08:00:00', '10:25:00', '129', 65, 50);
INSERT INTO workshops VALUES(111, 'Wykład z programowania w języku Python', 'Brak opisu.', '14:40:00', '17:05:00', '110', 160, 95);
INSERT INTO conferences VALUES ('Studencki festiwal programistów', 'Warszawa', 'Krótka', '02-495', '48', 0.15);
INSERT INTO conference_days VALUES(43, '2019-07-18', 200)
INSERT INTO conference_prices VALUES(43, '2019-07-18', 430)
INSERT INTO conference_prices VALUES(43, '2019-07-04', 344.0)
INSERT INTO workshops VALUES(112, 'Wykład z teorii kompilacji', 'Brak opisu.', '18:00:00', '20:25:00', '1310', 120, 65);
INSERT INTO workshops VALUES(112, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '17:10:00', '20:25:00', '818', 105, 60);
INSERT INTO workshops VALUES(112, 'Wykład z programowania obiektowego', 'Brak opisu.', '09:40:00', '12:55:00', '710', 115, 60);
INSERT INTO workshops VALUES(112, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '13:50:00', '17:05:00', '1411', 85, 50);
INSERT INTO conference_days VALUES(43, '2019-07-19', 200)
INSERT INTO conference_prices VALUES(43, '2019-07-18', 280)
INSERT INTO conference_prices VALUES(43, '2019-07-04', 224.0)
INSERT INTO workshops VALUES(113, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '08:00:00', '12:05:00', '918', 165, 65);
INSERT INTO workshops VALUES(113, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '09:40:00', '12:05:00', '22', 110, 70);
INSERT INTO workshops VALUES(113, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '15:30:00', '17:55:00', '2', 115, 90);
INSERT INTO workshops VALUES(113, 'Wykład z programowania w języku Rust', 'Brak opisu.', '14:40:00', '17:05:00', '102', 195, 50);
INSERT INTO conference_days VALUES(43, '2019-07-20', 200)
INSERT INTO conference_prices VALUES(43, '2019-07-18', 480)
INSERT INTO conference_prices VALUES(43, '2019-07-04', 384.0)
INSERT INTO workshops VALUES(114, 'Wykład z teorii kompilacji', 'Brak opisu.', '08:00:00', '10:25:00', '1206', 175, 65);
INSERT INTO workshops VALUES(114, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '17:10:00', '20:25:00', '813', 110, 15);
INSERT INTO workshops VALUES(114, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '18:00:00', '20:25:00', '819', 145, 30);
INSERT INTO conferences VALUES ('Międzyuczelniane forum kół naukowych', 'Warszawa', '3 Maja', '02-495', '27', 0.65);
INSERT INTO conference_days VALUES(44, '2019-08-02', 200)
INSERT INTO conference_prices VALUES(44, '2019-08-02', 240)
INSERT INTO conference_prices VALUES(44, '2019-07-19', 192.0)
INSERT INTO workshops VALUES(115, 'Wykład z programowania w języku C++', 'Brak opisu.', '13:50:00', '17:05:00', '400', 110, 20);
INSERT INTO workshops VALUES(115, 'Wykład z uczenia maszynowego', 'Brak opisu.', '10:30:00', '13:45:00', '1019', 125, 40);
INSERT INTO workshops VALUES(115, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '09:40:00', '11:15:00', '206', 195, 10);
INSERT INTO workshops VALUES(115, 'Wykład z programowania w języku Scala', 'Brak opisu.', '18:00:00', '20:25:00', '1413', 165, 90);
INSERT INTO workshops VALUES(115, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '11:20:00', '13:45:00', '1310', 100, 55);
INSERT INTO conference_days VALUES(44, '2019-08-03', 200)
INSERT INTO conference_prices VALUES(44, '2019-08-02', 370)
INSERT INTO conference_prices VALUES(44, '2019-07-19', 296.0)
INSERT INTO workshops VALUES(116, 'Wykład z kryptografii', 'Brak opisu.', '15:30:00', '17:55:00', '15', 110, 35);
INSERT INTO workshops VALUES(116, 'Wykład z systemów operacyjnych', 'Brak opisu.', '17:10:00', '19:35:00', '420', 85, 15);
INSERT INTO workshops VALUES(116, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '17:10:00', '18:45:00', '509', 70, 80);
INSERT INTO workshops VALUES(116, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '10:30:00', '12:05:00', '1101', 145, 90);
INSERT INTO conferences VALUES ('Ademickie zebranie informatyków', 'Kielce', 'Długa', '25-511', '17', 0.95);
INSERT INTO conference_days VALUES(45, '2019-08-16', 200)
INSERT INTO conference_prices VALUES(45, '2019-08-16', 280)
INSERT INTO conference_prices VALUES(45, '2019-08-02', 224.0)
INSERT INTO workshops VALUES(117, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '11:20:00', '15:25:00', '1019', 95, 90);
INSERT INTO workshops VALUES(117, 'Wykład z programowania w języku Julia', 'Brak opisu.', '13:50:00', '15:25:00', '104', 195, 95);
INSERT INTO conference_days VALUES(45, '2019-08-17', 200)
INSERT INTO conference_prices VALUES(45, '2019-08-16', 200)
INSERT INTO conference_prices VALUES(45, '2019-08-02', 160.0)
INSERT INTO workshops VALUES(118, 'Wykład z programowania w języku Java', 'Brak opisu.', '09:40:00', '13:45:00', '1420', 55, 55);
INSERT INTO workshops VALUES(118, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '10:30:00', '12:55:00', '1319', 185, 90);
INSERT INTO workshops VALUES(118, 'Wykład z grafiki komputerowej', 'Brak opisu.', '15:30:00', '17:55:00', '519', 55, 50);
INSERT INTO conferences VALUES ('Studenckie warsztaty kół naukowych', 'Kielce', 'Wojska Polskiego', '25-511', '38', 0.2);
INSERT INTO conference_days VALUES(46, '2019-09-06', 200)
INSERT INTO conference_prices VALUES(46, '2019-09-06', 320)
INSERT INTO conference_prices VALUES(46, '2019-08-23', 256.0)
INSERT INTO workshops VALUES(119, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '10:30:00', '12:55:00', '1000', 125, 60);
INSERT INTO workshops VALUES(119, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '17:10:00', '19:35:00', '822', 80, 30);
INSERT INTO workshops VALUES(119, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '11:20:00', '12:55:00', '601', 75, 50);
INSERT INTO workshops VALUES(119, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '08:50:00', '12:05:00', '221', 180, 10);
INSERT INTO workshops VALUES(119, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '12:10:00', '15:25:00', '803', 185, 45);
INSERT INTO conference_days VALUES(46, '2019-09-07', 200)
INSERT INTO conference_prices VALUES(46, '2019-09-06', 110)
INSERT INTO conference_prices VALUES(46, '2019-08-23', 88.0)
INSERT INTO workshops VALUES(120, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '08:00:00', '12:05:00', '1215', 125, 90);
INSERT INTO workshops VALUES(120, 'Wykład z systemów ekspertowych', 'Brak opisu.', '15:30:00', '17:05:00', '922', 150, 85);
INSERT INTO conferences VALUES ('Ademickie zebranie programistyczne', 'Rzeszów', 'Słowackiego', '35-030', '28', 1.0);
INSERT INTO conference_days VALUES(47, '2019-09-19', 200)
INSERT INTO conference_prices VALUES(47, '2019-09-19', 430)
INSERT INTO conference_prices VALUES(47, '2019-09-05', 344.0)
INSERT INTO workshops VALUES(121, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '16:20:00', '20:25:00', '308', 120, 20);
INSERT INTO workshops VALUES(121, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '13:00:00', '16:15:00', '1408', 50, 70);
INSERT INTO workshops VALUES(121, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '13:00:00', '16:15:00', '219', 100, 60);
INSERT INTO conference_days VALUES(47, '2019-09-20', 200)
INSERT INTO conference_prices VALUES(47, '2019-09-19', 160)
INSERT INTO conference_prices VALUES(47, '2019-09-05', 128.0)
INSERT INTO workshops VALUES(122, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '12:10:00', '14:35:00', '416', 150, 50);
INSERT INTO workshops VALUES(122, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '09:40:00', '12:55:00', '204', 130, 65);
INSERT INTO workshops VALUES(122, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '18:00:00', '20:25:00', '17', 120, 25);
INSERT INTO conference_days VALUES(47, '2019-09-21', 200)
INSERT INTO conference_prices VALUES(47, '2019-09-19', 460)
INSERT INTO conference_prices VALUES(47, '2019-09-05', 368.0)
INSERT INTO workshops VALUES(123, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '18:00:00', '20:25:00', '1127', 130, 15);
INSERT INTO workshops VALUES(123, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '13:50:00', '17:05:00', '906', 80, 65);
INSERT INTO workshops VALUES(123, 'Wykład z teorii kompilacji', 'Brak opisu.', '15:30:00', '17:05:00', '118', 135, 65);
INSERT INTO workshops VALUES(123, 'Warsztaty z architektur procesorów', 'Brak opisu.', '15:30:00', '17:55:00', '1228', 125, 85);
INSERT INTO conferences VALUES ('Studenckie forum programistów', 'Lublin', 'Słowackiego', '20-410', '2', 0.3);
INSERT INTO conference_days VALUES(48, '2019-09-27', 200)
INSERT INTO conference_prices VALUES(48, '2019-09-27', 390)
INSERT INTO conference_prices VALUES(48, '2019-09-13', 312.0)
INSERT INTO workshops VALUES(124, 'Wykład z uczenia maszynowego', 'Brak opisu.', '18:00:00', '20:25:00', '112', 80, 80);
INSERT INTO workshops VALUES(124, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '10:30:00', '12:05:00', '718', 155, 65);
INSERT INTO workshops VALUES(124, 'Wykład z grafiki komputerowej', 'Brak opisu.', '13:50:00', '17:05:00', '1010', 160, 25);
INSERT INTO conference_days VALUES(48, '2019-09-28', 200)
INSERT INTO conference_prices VALUES(48, '2019-09-27', 140)
INSERT INTO conference_prices VALUES(48, '2019-09-13', 112.0)
INSERT INTO workshops VALUES(125, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '14:40:00', '17:05:00', '911', 150, 50);
INSERT INTO workshops VALUES(125, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '13:00:00', '17:05:00', '728', 130, 50);
INSERT INTO workshops VALUES(125, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '15:30:00', '17:55:00', '726', 90, 85);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje programistyczne', 'Wrocław', 'Dębowa', '52-119', '37', 0.15);
INSERT INTO conference_days VALUES(49, '2019-10-03', 200)
INSERT INTO conference_prices VALUES(49, '2019-10-03', 290)
INSERT INTO conference_prices VALUES(49, '2019-09-19', 232.0)
INSERT INTO workshops VALUES(126, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '08:50:00', '10:25:00', '1229', 190, 45);
INSERT INTO workshops VALUES(126, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '08:00:00', '11:15:00', '6', 140, 70);
INSERT INTO workshops VALUES(126, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '16:20:00', '19:35:00', '1313', 170, 75);
INSERT INTO conference_days VALUES(49, '2019-10-04', 200)
INSERT INTO conference_prices VALUES(49, '2019-10-03', 170)
INSERT INTO conference_prices VALUES(49, '2019-09-19', 136.0)
INSERT INTO workshops VALUES(127, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '17:10:00', '19:35:00', '211', 160, 40);
INSERT INTO workshops VALUES(127, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '12:10:00', '16:15:00', '1405', 70, 95);
INSERT INTO workshops VALUES(127, 'Wykład z programowania w języku Java', 'Brak opisu.', '14:40:00', '17:55:00', '1400', 145, 25);
INSERT INTO workshops VALUES(127, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '16:20:00', '17:55:00', '416', 50, 10);
INSERT INTO conference_days VALUES(49, '2019-10-05', 200)
INSERT INTO conference_prices VALUES(49, '2019-10-03', 240)
INSERT INTO conference_prices VALUES(49, '2019-09-19', 192.0)
INSERT INTO workshops VALUES(128, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '10:30:00', '14:35:00', '515', 60, 55);
INSERT INTO workshops VALUES(128, 'Wykład z programowania obiektowego', 'Brak opisu.', '10:30:00', '14:35:00', '504', 110, 65);
INSERT INTO workshops VALUES(128, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '14:40:00', '18:45:00', '926', 170, 50);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie informatyków', 'Wrocław', 'Dębowa', '52-119', '36', 0.25);
INSERT INTO conference_days VALUES(50, '2019-10-11', 200)
INSERT INTO conference_prices VALUES(50, '2019-10-11', 480)
INSERT INTO conference_prices VALUES(50, '2019-09-27', 384.0)
INSERT INTO workshops VALUES(129, 'Warsztaty z cyberbezpieczeństwa', 'Brak opisu.', '15:30:00', '19:35:00', '724', 55, 75);
INSERT INTO workshops VALUES(129, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '17:10:00', '20:25:00', '303', 120, 25);
INSERT INTO workshops VALUES(129, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '18:00:00', '20:25:00', '417', 175, 80);
INSERT INTO workshops VALUES(129, 'Wykład z architektur procesorów', 'Brak opisu.', '14:40:00', '18:45:00', '1404', 50, 85);
INSERT INTO workshops VALUES(129, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '14:40:00', '17:55:00', '120', 105, 30);
INSERT INTO workshops VALUES(129, 'Wykład z uczenia maszynowego', 'Brak opisu.', '16:20:00', '20:25:00', '118', 160, 15);
INSERT INTO conference_days VALUES(50, '2019-10-12', 200)
INSERT INTO conference_prices VALUES(50, '2019-10-11', 160)
INSERT INTO conference_prices VALUES(50, '2019-09-27', 128.0)
INSERT INTO workshops VALUES(130, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '13:50:00', '15:25:00', '912', 105, 85);
INSERT INTO workshops VALUES(130, 'Warsztaty z programowania równoległego', 'Brak opisu.', '11:20:00', '14:35:00', '829', 170, 95);
INSERT INTO conferences VALUES ('Powszechne konferencje informatyczne', 'Stalowa Wola', 'Słowackiego', '37-450', '0', 0.75);
INSERT INTO conference_days VALUES(51, '2019-10-17', 200)
INSERT INTO conference_prices VALUES(51, '2019-10-17', 460)
INSERT INTO conference_prices VALUES(51, '2019-10-03', 368.0)
INSERT INTO workshops VALUES(131, 'Wykład z systemów ekspertowych', 'Brak opisu.', '11:20:00', '12:55:00', '3', 185, 85);
INSERT INTO workshops VALUES(131, 'Wykład z programowania w języku C++', 'Brak opisu.', '13:00:00', '17:05:00', '220', 110, 70);
INSERT INTO conference_days VALUES(51, '2019-10-18', 200)
INSERT INTO conference_prices VALUES(51, '2019-10-17', 140)
INSERT INTO conference_prices VALUES(51, '2019-10-03', 112.0)
INSERT INTO workshops VALUES(132, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '12:10:00', '16:15:00', '912', 145, 90);
INSERT INTO workshops VALUES(132, 'Warsztaty z architektur procesorów', 'Brak opisu.', '12:10:00', '14:35:00', '416', 70, 30);
INSERT INTO conference_days VALUES(51, '2019-10-19', 200)
INSERT INTO conference_prices VALUES(51, '2019-10-17', 410)
INSERT INTO conference_prices VALUES(51, '2019-10-03', 328.0)
INSERT INTO workshops VALUES(133, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '13:00:00', '15:25:00', '422', 195, 75);
INSERT INTO workshops VALUES(133, 'Wykład z programowania w języku Java', 'Brak opisu.', '08:50:00', '10:25:00', '115', 105, 45);
INSERT INTO workshops VALUES(133, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '10:30:00', '14:35:00', '1222', 95, 45);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje informatyków', 'Katowice', 'Długa', '40-236', '2', 0.8);
INSERT INTO conference_days VALUES(52, '2019-10-31', 200)
INSERT INTO conference_prices VALUES(52, '2019-10-31', 350)
INSERT INTO conference_prices VALUES(52, '2019-10-17', 280.0)
INSERT INTO workshops VALUES(134, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '10:30:00', '13:45:00', '1316', 155, 30);
INSERT INTO workshops VALUES(134, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '14:40:00', '16:15:00', '617', 120, 40);
INSERT INTO conference_days VALUES(52, '2019-11-01', 200)
INSERT INTO conference_prices VALUES(52, '2019-10-31', 440)
INSERT INTO conference_prices VALUES(52, '2019-10-17', 352.0)
INSERT INTO workshops VALUES(135, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '16:20:00', '19:35:00', '316', 50, 15);
INSERT INTO workshops VALUES(135, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '10:30:00', '12:55:00', '521', 125, 15);
INSERT INTO workshops VALUES(135, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '08:50:00', '12:05:00', '323', 190, 70);
INSERT INTO workshops VALUES(135, 'Wykład z programowania w języku Julia', 'Brak opisu.', '15:30:00', '17:05:00', '226', 185, 65);
INSERT INTO conference_days VALUES(52, '2019-11-02', 200)
INSERT INTO conference_prices VALUES(52, '2019-10-31', 330)
INSERT INTO conference_prices VALUES(52, '2019-10-17', 264.0)
INSERT INTO workshops VALUES(136, 'Wykład z programowania w języku Rust', 'Brak opisu.', '09:40:00', '11:15:00', '404', 195, 80);
INSERT INTO workshops VALUES(136, 'Wykład z programowania w języku Python', 'Brak opisu.', '10:30:00', '12:55:00', '1109', 135, 40);
INSERT INTO workshops VALUES(136, 'Warsztaty z architektur procesorów', 'Brak opisu.', '09:40:00', '12:05:00', '1007', 85, 45);
INSERT INTO workshops VALUES(136, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '15:30:00', '17:05:00', '126', 55, 55);
INSERT INTO workshops VALUES(136, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '15:30:00', '17:05:00', '12', 130, 25);
INSERT INTO workshops VALUES(136, 'Wykład z systemów ekspertowych', 'Brak opisu.', '13:50:00', '17:05:00', '514', 70, 10);
INSERT INTO conferences VALUES ('Akademickie spotkanie programistów', 'Kraków', 'Dębowa', '30-055', '37', 0.35);
INSERT INTO conference_days VALUES(53, '2019-11-13', 200)
INSERT INTO conference_prices VALUES(53, '2019-11-13', 140)
INSERT INTO conference_prices VALUES(53, '2019-10-30', 112.0)
INSERT INTO workshops VALUES(137, 'Wykład z sieci neuronowych', 'Brak opisu.', '10:30:00', '12:55:00', '9', 105, 50);
INSERT INTO workshops VALUES(137, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '13:00:00', '15:25:00', '1407', 75, 80);
INSERT INTO workshops VALUES(137, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '18:00:00', '19:35:00', '1317', 175, 95);
INSERT INTO workshops VALUES(137, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '08:00:00', '10:25:00', '306', 145, 50);
INSERT INTO conference_days VALUES(53, '2019-11-14', 200)
INSERT INTO conference_prices VALUES(53, '2019-11-13', 140)
INSERT INTO conference_prices VALUES(53, '2019-10-30', 112.0)
INSERT INTO workshops VALUES(138, 'Wykład z grafiki komputerowej', 'Brak opisu.', '13:00:00', '16:15:00', '724', 180, 35);
INSERT INTO workshops VALUES(138, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '14:40:00', '16:15:00', '24', 50, 85);
INSERT INTO workshops VALUES(138, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '12:10:00', '16:15:00', '102', 185, 30);
INSERT INTO workshops VALUES(138, 'Warsztaty z kryptografii', 'Brak opisu.', '13:50:00', '17:05:00', '1024', 170, 70);
INSERT INTO workshops VALUES(138, 'Wykład z programowania w języku Rust', 'Brak opisu.', '12:10:00', '14:35:00', '414', 155, 25);
INSERT INTO workshops VALUES(138, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '18:00:00', '19:35:00', '15', 145, 70);
INSERT INTO conference_days VALUES(53, '2019-11-15', 200)
INSERT INTO conference_prices VALUES(53, '2019-11-13', 440)
INSERT INTO conference_prices VALUES(53, '2019-10-30', 352.0)
INSERT INTO workshops VALUES(139, 'Wykład z kryptografii', 'Brak opisu.', '11:20:00', '13:45:00', '100', 165, 50);
INSERT INTO workshops VALUES(139, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '16:20:00', '17:55:00', '219', 90, 70);
INSERT INTO workshops VALUES(139, 'Warsztaty z programowania równoległego', 'Brak opisu.', '09:40:00', '13:45:00', '3', 185, 90);
INSERT INTO workshops VALUES(139, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '17:10:00', '18:45:00', '111', 185, 70);
INSERT INTO conference_days VALUES(53, '2019-11-16', 200)
INSERT INTO conference_prices VALUES(53, '2019-11-13', 110)
INSERT INTO conference_prices VALUES(53, '2019-10-30', 88.0)
INSERT INTO workshops VALUES(140, 'Wykład z programowania w języku Julia', 'Brak opisu.', '15:30:00', '19:35:00', '413', 165, 25);
INSERT INTO workshops VALUES(140, 'Wykład z programowania równoległego', 'Brak opisu.', '16:20:00', '17:55:00', '1217', 95, 65);
INSERT INTO workshops VALUES(140, 'Wykład z przetwarzania języka naturalnego', 'Brak opisu.', '16:20:00', '19:35:00', '923', 130, 30);
INSERT INTO workshops VALUES(140, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '09:40:00', '12:05:00', '108', 125, 40);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje programistyczne', 'Warszawa', 'Wojska Polskiego', '02-495', '13', 0.15);
INSERT INTO conference_days VALUES(54, '2019-11-21', 200)
INSERT INTO conference_prices VALUES(54, '2019-11-21', 410)
INSERT INTO conference_prices VALUES(54, '2019-11-07', 328.0)
INSERT INTO workshops VALUES(141, 'Wykład z grafiki komputerowej', 'Brak opisu.', '08:50:00', '12:55:00', '821', 85, 85);
INSERT INTO workshops VALUES(141, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '17:10:00', '18:45:00', '612', 195, 10);
INSERT INTO workshops VALUES(141, 'Wykład z algorytmów grafowych', 'Brak opisu.', '08:00:00', '09:35:00', '210', 65, 85);
INSERT INTO workshops VALUES(141, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '09:40:00', '12:55:00', '1312', 180, 70);
INSERT INTO workshops VALUES(141, 'Wykład z programowania w języku Scala', 'Brak opisu.', '13:50:00', '17:55:00', '627', 125, 85);
INSERT INTO workshops VALUES(141, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '10:30:00', '13:45:00', '1315', 130, 60);
INSERT INTO conference_days VALUES(54, '2019-11-22', 200)
INSERT INTO conference_prices VALUES(54, '2019-11-21', 310)
INSERT INTO conference_prices VALUES(54, '2019-11-07', 248.0)
INSERT INTO workshops VALUES(142, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '13:50:00', '16:15:00', '1107', 90, 60);
INSERT INTO workshops VALUES(142, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '13:00:00', '15:25:00', '16', 175, 20);
INSERT INTO conference_days VALUES(54, '2019-11-23', 200)
INSERT INTO conference_prices VALUES(54, '2019-11-21', 340)
INSERT INTO conference_prices VALUES(54, '2019-11-07', 272.0)
INSERT INTO workshops VALUES(143, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '08:00:00', '11:15:00', '1207', 75, 20);
INSERT INTO workshops VALUES(143, 'Wykład z architektur procesorów', 'Brak opisu.', '18:00:00', '19:35:00', '211', 175, 70);
INSERT INTO workshops VALUES(143, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '18:00:00', '20:25:00', '902', 60, 85);
INSERT INTO workshops VALUES(143, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '14:40:00', '18:45:00', '729', 95, 60);
INSERT INTO conferences VALUES ('Studenckie warsztaty miłośników programowania', 'Lublin', 'Długa', '20-410', '40', 0.45);
INSERT INTO conference_days VALUES(55, '2019-12-06', 200)
INSERT INTO conference_prices VALUES(55, '2019-12-06', 150)
INSERT INTO conference_prices VALUES(55, '2019-11-22', 120.0)
INSERT INTO workshops VALUES(144, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '08:50:00', '10:25:00', '809', 150, 55);
INSERT INTO workshops VALUES(144, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '08:50:00', '11:15:00', '1325', 195, 60);
INSERT INTO workshops VALUES(144, 'Wykład z sieci neuronowych', 'Brak opisu.', '13:00:00', '15:25:00', '625', 195, 15);
INSERT INTO workshops VALUES(144, 'Wykład z algorytmów grafowych', 'Brak opisu.', '13:50:00', '16:15:00', '1124', 75, 65);
INSERT INTO conference_days VALUES(55, '2019-12-07', 200)
INSERT INTO conference_prices VALUES(55, '2019-12-06', 160)
INSERT INTO conference_prices VALUES(55, '2019-11-22', 128.0)
INSERT INTO workshops VALUES(145, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '16:20:00', '19:35:00', '802', 100, 65);
INSERT INTO workshops VALUES(145, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '17:10:00', '19:35:00', '519', 165, 40);
INSERT INTO workshops VALUES(145, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '11:20:00', '14:35:00', '1200', 135, 40);
INSERT INTO workshops VALUES(145, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '11:20:00', '14:35:00', '228', 170, 30);
INSERT INTO conferences VALUES ('Międzyuczelniane forum programistyczne', 'Wrocław', 'Krótka', '52-119', '3', 0.9);
INSERT INTO conference_days VALUES(56, '2019-12-27', 200)
INSERT INTO conference_prices VALUES(56, '2019-12-27', 190)
INSERT INTO conference_prices VALUES(56, '2019-12-13', 152.0)
INSERT INTO workshops VALUES(146, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '13:00:00', '17:05:00', '628', 195, 80);
INSERT INTO workshops VALUES(146, 'Wykład z programowania w języku Scala', 'Brak opisu.', '17:10:00', '18:45:00', '1010', 160, 95);
INSERT INTO workshops VALUES(146, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '08:50:00', '12:05:00', '824', 155, 30);
INSERT INTO conference_days VALUES(56, '2019-12-28', 200)
INSERT INTO conference_prices VALUES(56, '2019-12-27', 400)
INSERT INTO conference_prices VALUES(56, '2019-12-13', 320.0)
INSERT INTO workshops VALUES(147, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '11:20:00', '12:55:00', '528', 170, 20);
INSERT INTO workshops VALUES(147, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '17:10:00', '19:35:00', '1106', 185, 95);
INSERT INTO workshops VALUES(147, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '10:30:00', '14:35:00', '307', 75, 85);
INSERT INTO conferences VALUES ('Powszechne konferencje informatyczne', 'Kraków', 'Królewska', '30-055', '0', 0.85);
INSERT INTO conference_days VALUES(57, '2020-01-16', 200)
INSERT INTO conference_prices VALUES(57, '2020-01-16', 120)
INSERT INTO conference_prices VALUES(57, '2020-01-02', 96.0)
INSERT INTO workshops VALUES(148, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '09:40:00', '13:45:00', '1028', 60, 10);
INSERT INTO workshops VALUES(148, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '08:50:00', '12:55:00', '1424', 95, 25);
INSERT INTO workshops VALUES(148, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '15:30:00', '17:55:00', '1028', 150, 70);
INSERT INTO workshops VALUES(148, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '18:00:00', '20:25:00', '603', 50, 95);
INSERT INTO conference_days VALUES(57, '2020-01-17', 200)
INSERT INTO conference_prices VALUES(57, '2020-01-16', 250)
INSERT INTO conference_prices VALUES(57, '2020-01-02', 200.0)
INSERT INTO workshops VALUES(149, 'Warsztaty z kryptografii', 'Brak opisu.', '12:10:00', '16:15:00', '208', 145, 45);
INSERT INTO workshops VALUES(149, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '16:20:00', '20:25:00', '314', 125, 80);
INSERT INTO workshops VALUES(149, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '08:00:00', '11:15:00', '720', 130, 70);
INSERT INTO workshops VALUES(149, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '18:00:00', '20:25:00', '625', 115, 75);
INSERT INTO workshops VALUES(149, 'Warsztaty z kryptografii', 'Brak opisu.', '14:40:00', '18:45:00', '1029', 195, 20);
INSERT INTO conference_days VALUES(57, '2020-01-18', 200)
INSERT INTO conference_prices VALUES(57, '2020-01-16', 110)
INSERT INTO conference_prices VALUES(57, '2020-01-02', 88.0)
INSERT INTO workshops VALUES(150, 'Wykład z programowania w języku C++', 'Brak opisu.', '14:40:00', '17:55:00', '500', 165, 70);
INSERT INTO workshops VALUES(150, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '17:10:00', '20:25:00', '1302', 145, 55);
INSERT INTO workshops VALUES(150, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '17:10:00', '19:35:00', '215', 105, 30);
INSERT INTO workshops VALUES(150, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '17:10:00', '18:45:00', '708', 75, 30);
INSERT INTO workshops VALUES(150, 'Warsztaty z programowania równoległego', 'Brak opisu.', '12:10:00', '14:35:00', '806', 60, 35);
INSERT INTO conferences VALUES ('Akademickie konferencje programistyczne', 'Kielce', 'Armii Krajowej', '25-511', '19', 1.0);
INSERT INTO conference_days VALUES(58, '2020-01-24', 200)
INSERT INTO conference_prices VALUES(58, '2020-01-24', 280)
INSERT INTO conference_prices VALUES(58, '2020-01-10', 224.0)
INSERT INTO workshops VALUES(151, 'Wykład z algorytmów grafowych', 'Brak opisu.', '14:40:00', '18:45:00', '609', 140, 95);
INSERT INTO workshops VALUES(151, 'Wykład z programowania obiektowego', 'Brak opisu.', '11:20:00', '15:25:00', '1323', 70, 75);
INSERT INTO conference_days VALUES(58, '2020-01-25', 200)
INSERT INTO conference_prices VALUES(58, '2020-01-24', 350)
INSERT INTO conference_prices VALUES(58, '2020-01-10', 280.0)
INSERT INTO workshops VALUES(152, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '17:10:00', '19:35:00', '28', 55, 85);
INSERT INTO workshops VALUES(152, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '09:40:00', '12:55:00', '606', 145, 15);
INSERT INTO workshops VALUES(152, 'Wykład z uczenia maszynowego', 'Brak opisu.', '08:50:00', '12:05:00', '525', 140, 95);
INSERT INTO workshops VALUES(152, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '14:40:00', '16:15:00', '625', 120, 25);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje programistyczne', 'Stalowa Wola', 'Lipowa', '37-450', '49', 0.2);
INSERT INTO conference_days VALUES(59, '2020-02-12', 200)
INSERT INTO conference_prices VALUES(59, '2020-02-12', 190)
INSERT INTO conference_prices VALUES(59, '2020-01-29', 152.0)
INSERT INTO workshops VALUES(153, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '13:00:00', '16:15:00', '1220', 140, 45);
INSERT INTO workshops VALUES(153, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '10:30:00', '14:35:00', '1023', 135, 60);
INSERT INTO conference_days VALUES(59, '2020-02-13', 200)
INSERT INTO conference_prices VALUES(59, '2020-02-12', 480)
INSERT INTO conference_prices VALUES(59, '2020-01-29', 384.0)
INSERT INTO workshops VALUES(154, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '12:10:00', '15:25:00', '605', 100, 70);
INSERT INTO workshops VALUES(154, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '16:20:00', '18:45:00', '1027', 135, 45);
INSERT INTO workshops VALUES(154, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '08:00:00', '11:15:00', '828', 85, 75);
INSERT INTO workshops VALUES(154, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '16:20:00', '19:35:00', '925', 170, 90);
INSERT INTO conference_days VALUES(59, '2020-02-14', 200)
INSERT INTO conference_prices VALUES(59, '2020-02-12', 210)
INSERT INTO conference_prices VALUES(59, '2020-01-29', 168.0)
INSERT INTO workshops VALUES(155, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '13:50:00', '16:15:00', '627', 150, 70);
INSERT INTO workshops VALUES(155, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '08:00:00', '12:05:00', '516', 70, 15);
INSERT INTO conference_days VALUES(59, '2020-02-15', 200)
INSERT INTO conference_prices VALUES(59, '2020-02-12', 490)
INSERT INTO conference_prices VALUES(59, '2020-01-29', 392.0)
INSERT INTO workshops VALUES(156, 'Wykład z sieci neuronowych', 'Brak opisu.', '18:00:00', '20:25:00', '618', 130, 30);
INSERT INTO workshops VALUES(156, 'Wykład z programowania równoległego', 'Brak opisu.', '15:30:00', '19:35:00', '725', 165, 40);
INSERT INTO workshops VALUES(156, 'Wykład z programowania obiektowego', 'Brak opisu.', '18:00:00', '19:35:00', '925', 95, 85);
INSERT INTO workshops VALUES(156, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '10:30:00', '12:05:00', '619', 60, 60);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie kół naukowych', 'Lublin', 'Wojska Polskiego', '20-410', '30', 0.3);
INSERT INTO conference_days VALUES(60, '2020-02-20', 200)
INSERT INTO conference_prices VALUES(60, '2020-02-20', 430)
INSERT INTO conference_prices VALUES(60, '2020-02-06', 344.0)
INSERT INTO workshops VALUES(157, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '12:10:00', '14:35:00', '1118', 120, 55);
INSERT INTO workshops VALUES(157, 'Wykład z programowania obiektowego', 'Brak opisu.', '11:20:00', '13:45:00', '601', 135, 85);
INSERT INTO workshops VALUES(157, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '13:50:00', '16:15:00', '121', 55, 55);
INSERT INTO conference_days VALUES(60, '2020-02-21', 200)
INSERT INTO conference_prices VALUES(60, '2020-02-20', 190)
INSERT INTO conference_prices VALUES(60, '2020-02-06', 152.0)
INSERT INTO workshops VALUES(158, 'Warsztaty z teorii kompilacji', 'Brak opisu.', '12:10:00', '13:45:00', '929', 55, 90);
INSERT INTO workshops VALUES(158, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '18:00:00', '20:25:00', '705', 80, 90);
INSERT INTO workshops VALUES(158, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '13:00:00', '15:25:00', '726', 140, 10);
INSERT INTO workshops VALUES(158, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '10:30:00', '14:35:00', '815', 175, 10);
INSERT INTO conference_days VALUES(60, '2020-02-22', 200)
INSERT INTO conference_prices VALUES(60, '2020-02-20', 220)
INSERT INTO conference_prices VALUES(60, '2020-02-06', 176.0)
INSERT INTO workshops VALUES(159, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '15:30:00', '17:05:00', '1111', 170, 95);
INSERT INTO workshops VALUES(159, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '13:00:00', '15:25:00', '216', 120, 25);
INSERT INTO workshops VALUES(159, 'Wykład z teorii kompilacji', 'Brak opisu.', '11:20:00', '15:25:00', '122', 160, 60);
INSERT INTO conferences VALUES ('Powszechne konferencje programistyczne', 'Wrocław', 'Lipowa', '52-119', '26', 0.7);
INSERT INTO conference_days VALUES(61, '2020-03-06', 200)
INSERT INTO conference_prices VALUES(61, '2020-03-06', 460)
INSERT INTO conference_prices VALUES(61, '2020-02-21', 368.0)
INSERT INTO workshops VALUES(160, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '15:30:00', '17:05:00', '401', 190, 35);
INSERT INTO workshops VALUES(160, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '18:00:00', '19:35:00', '325', 170, 40);
INSERT INTO workshops VALUES(160, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '15:30:00', '19:35:00', '708', 75, 50);
INSERT INTO conference_days VALUES(61, '2020-03-07', 200)
INSERT INTO conference_prices VALUES(61, '2020-03-06', 300)
INSERT INTO conference_prices VALUES(61, '2020-02-21', 240.0)
INSERT INTO workshops VALUES(161, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '12:10:00', '14:35:00', '317', 160, 80);
INSERT INTO workshops VALUES(161, 'Warsztaty z programowania równoległego', 'Brak opisu.', '18:00:00', '20:25:00', '23', 145, 45);
INSERT INTO workshops VALUES(161, 'Wykład z architektur procesorów', 'Brak opisu.', '13:50:00', '17:55:00', '1307', 50, 35);
INSERT INTO conferences VALUES ('Studenckie warsztaty programistów', 'Wrocław', 'Królewska', '52-119', '31', 0.6);
INSERT INTO conference_days VALUES(62, '2020-03-19', 200)
INSERT INTO conference_prices VALUES(62, '2020-03-19', 340)
INSERT INTO conference_prices VALUES(62, '2020-03-05', 272.0)
INSERT INTO workshops VALUES(162, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '14:40:00', '18:45:00', '1426', 105, 15);
INSERT INTO workshops VALUES(162, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '13:00:00', '14:35:00', '1419', 50, 90);
INSERT INTO workshops VALUES(162, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '16:20:00', '19:35:00', '1125', 150, 65);
INSERT INTO workshops VALUES(162, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '08:00:00', '10:25:00', '614', 95, 60);
INSERT INTO conference_days VALUES(62, '2020-03-20', 200)
INSERT INTO conference_prices VALUES(62, '2020-03-19', 430)
INSERT INTO conference_prices VALUES(62, '2020-03-05', 344.0)
INSERT INTO workshops VALUES(163, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '08:00:00', '09:35:00', '527', 180, 55);
INSERT INTO workshops VALUES(163, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '18:00:00', '20:25:00', '1305', 95, 10);
INSERT INTO workshops VALUES(163, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '14:40:00', '18:45:00', '529', 190, 25);
INSERT INTO workshops VALUES(163, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '17:10:00', '20:25:00', '113', 95, 20);
INSERT INTO conference_days VALUES(62, '2020-03-21', 200)
INSERT INTO conference_prices VALUES(62, '2020-03-19', 270)
INSERT INTO conference_prices VALUES(62, '2020-03-05', 216.0)
INSERT INTO workshops VALUES(164, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '15:30:00', '17:05:00', '1023', 185, 15);
INSERT INTO workshops VALUES(164, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '10:30:00', '13:45:00', '1225', 135, 75);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie informatyczne', 'Kielce', 'Długa', '25-511', '12', 0.45);
INSERT INTO conference_days VALUES(63, '2020-04-09', 200)
INSERT INTO conference_prices VALUES(63, '2020-04-09', 140)
INSERT INTO conference_prices VALUES(63, '2020-03-26', 112.0)
INSERT INTO workshops VALUES(165, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '18:00:00', '20:25:00', '321', 105, 50);
INSERT INTO workshops VALUES(165, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '10:30:00', '12:05:00', '510', 190, 40);
INSERT INTO workshops VALUES(165, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '12:10:00', '14:35:00', '103', 105, 90);
INSERT INTO conference_days VALUES(63, '2020-04-10', 200)
INSERT INTO conference_prices VALUES(63, '2020-04-09', 490)
INSERT INTO conference_prices VALUES(63, '2020-03-26', 392.0)
INSERT INTO workshops VALUES(166, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '09:40:00', '11:15:00', '1127', 85, 70);
INSERT INTO workshops VALUES(166, 'Wykład z architektur procesorów', 'Brak opisu.', '11:20:00', '13:45:00', '1413', 155, 10);
INSERT INTO workshops VALUES(166, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '10:30:00', '13:45:00', '913', 50, 70);
INSERT INTO workshops VALUES(166, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '08:50:00', '10:25:00', '729', 90, 95);
INSERT INTO workshops VALUES(166, 'Wykład z grafiki komputerowej', 'Brak opisu.', '08:50:00', '12:05:00', '1415', 140, 95);
INSERT INTO conference_days VALUES(63, '2020-04-11', 200)
INSERT INTO conference_prices VALUES(63, '2020-04-09', 160)
INSERT INTO conference_prices VALUES(63, '2020-03-26', 128.0)
INSERT INTO workshops VALUES(167, 'Warsztaty z programowania równoległego', 'Brak opisu.', '18:00:00', '20:25:00', '129', 70, 50);
INSERT INTO workshops VALUES(167, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '13:50:00', '17:05:00', '413', 60, 40);
INSERT INTO workshops VALUES(167, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '13:00:00', '15:25:00', '613', 175, 85);
INSERT INTO conferences VALUES ('Akademickie spotkanie informatyków', 'Rzeszów', 'Dębowa', '35-030', '14', 0.2);
INSERT INTO conference_days VALUES(64, '2020-04-16', 200)
INSERT INTO conference_prices VALUES(64, '2020-04-16', 410)
INSERT INTO conference_prices VALUES(64, '2020-04-02', 328.0)
INSERT INTO workshops VALUES(168, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '16:20:00', '19:35:00', '7', 65, 10);
INSERT INTO workshops VALUES(168, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '13:00:00', '15:25:00', '329', 140, 95);
INSERT INTO workshops VALUES(168, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '08:00:00', '11:15:00', '703', 80, 65);
INSERT INTO conference_days VALUES(64, '2020-04-17', 200)
INSERT INTO conference_prices VALUES(64, '2020-04-16', 470)
INSERT INTO conference_prices VALUES(64, '2020-04-02', 376.0)
INSERT INTO workshops VALUES(169, 'Wykład z programowania w języku Rust', 'Brak opisu.', '18:00:00', '20:25:00', '307', 150, 75);
INSERT INTO workshops VALUES(169, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '14:40:00', '18:45:00', '715', 115, 25);
INSERT INTO workshops VALUES(169, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '17:10:00', '20:25:00', '205', 155, 85);
INSERT INTO workshops VALUES(169, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '18:00:00', '20:25:00', '1419', 50, 50);
INSERT INTO conference_days VALUES(64, '2020-04-18', 200)
INSERT INTO conference_prices VALUES(64, '2020-04-16', 240)
INSERT INTO conference_prices VALUES(64, '2020-04-02', 192.0)
INSERT INTO workshops VALUES(170, 'Warsztaty z algorytmów i struktur danych', 'Brak opisu.', '13:00:00', '17:05:00', '717', 180, 55);
INSERT INTO workshops VALUES(170, 'Wykład z programowania w języku Julia', 'Brak opisu.', '14:40:00', '17:55:00', '1216', 190, 90);
INSERT INTO workshops VALUES(170, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '08:00:00', '09:35:00', '16', 105, 50);
INSERT INTO workshops VALUES(170, 'Warsztaty z architektur procesorów', 'Brak opisu.', '09:40:00', '11:15:00', '818', 165, 65);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje informatyków', 'Lublin', 'Lipowa', '20-410', '8', 0.3);
INSERT INTO conference_days VALUES(65, '2020-05-01', 200)
INSERT INTO conference_prices VALUES(65, '2020-05-01', 210)
INSERT INTO conference_prices VALUES(65, '2020-04-17', 168.0)
INSERT INTO workshops VALUES(171, 'Wykład z programowania obiektowego', 'Brak opisu.', '08:50:00', '12:05:00', '1022', 175, 85);
INSERT INTO workshops VALUES(171, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '12:10:00', '13:45:00', '1408', 75, 45);
INSERT INTO workshops VALUES(171, 'Warsztaty z programowania w języku Erlang', 'Brak opisu.', '10:30:00', '13:45:00', '224', 105, 95);
INSERT INTO conference_days VALUES(65, '2020-05-02', 200)
INSERT INTO conference_prices VALUES(65, '2020-05-01', 400)
INSERT INTO conference_prices VALUES(65, '2020-04-17', 320.0)
INSERT INTO workshops VALUES(172, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '14:40:00', '16:15:00', '1105', 105, 90);
INSERT INTO workshops VALUES(172, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '09:40:00', '11:15:00', '812', 180, 60);
INSERT INTO workshops VALUES(172, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '14:40:00', '17:05:00', '817', 195, 90);
INSERT INTO workshops VALUES(172, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '13:50:00', '16:15:00', '1111', 70, 20);
INSERT INTO workshops VALUES(172, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '08:50:00', '10:25:00', '1023', 125, 15);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie informatyków', 'Warszawa', 'Dębowa', '02-495', '23', 0.55);
INSERT INTO conference_days VALUES(66, '2020-05-07', 200)
INSERT INTO conference_prices VALUES(66, '2020-05-07', 400)
INSERT INTO conference_prices VALUES(66, '2020-04-23', 320.0)
INSERT INTO workshops VALUES(173, 'Wykład z kryptografii', 'Brak opisu.', '11:20:00', '12:55:00', '1401', 165, 50);
INSERT INTO workshops VALUES(173, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '10:30:00', '12:05:00', '808', 125, 40);
INSERT INTO workshops VALUES(173, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '08:50:00', '11:15:00', '1017', 170, 60);
INSERT INTO conference_days VALUES(66, '2020-05-08', 200)
INSERT INTO conference_prices VALUES(66, '2020-05-07', 190)
INSERT INTO conference_prices VALUES(66, '2020-04-23', 152.0)
INSERT INTO workshops VALUES(174, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '13:00:00', '16:15:00', '308', 135, 85);
INSERT INTO workshops VALUES(174, 'Wykład z uczenia maszynowego', 'Brak opisu.', '09:40:00', '11:15:00', '410', 190, 50);
INSERT INTO workshops VALUES(174, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '14:40:00', '17:55:00', '217', 120, 40);
INSERT INTO workshops VALUES(174, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '14:40:00', '17:55:00', '308', 130, 55);
INSERT INTO conference_days VALUES(66, '2020-05-09', 200)
INSERT INTO conference_prices VALUES(66, '2020-05-07', 210)
INSERT INTO conference_prices VALUES(66, '2020-04-23', 168.0)
INSERT INTO workshops VALUES(175, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '14:40:00', '17:55:00', '228', 140, 15);
INSERT INTO workshops VALUES(175, 'Wykład z programowania równoległego', 'Brak opisu.', '08:50:00', '10:25:00', '316', 90, 95);
INSERT INTO workshops VALUES(175, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '16:20:00', '18:45:00', '902', 75, 70);
INSERT INTO workshops VALUES(175, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '12:10:00', '14:35:00', '100', 170, 25);
INSERT INTO workshops VALUES(175, 'Warsztaty z programowania równoległego', 'Brak opisu.', '12:10:00', '15:25:00', '121', 155, 95);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie informatyków', 'Kraków', '3 Maja', '30-055', '24', 0.0);
INSERT INTO conference_days VALUES(67, '2020-05-22', 200)
INSERT INTO conference_prices VALUES(67, '2020-05-22', 180)
INSERT INTO conference_prices VALUES(67, '2020-05-08', 144.0)
INSERT INTO workshops VALUES(176, 'Warsztaty z architektur procesorów', 'Brak opisu.', '08:50:00', '12:55:00', '324', 140, 80);
INSERT INTO workshops VALUES(176, 'Wykład z programowania w języku Julia', 'Brak opisu.', '16:20:00', '19:35:00', '1102', 185, 25);
INSERT INTO workshops VALUES(176, 'Wykład z architektur procesorów', 'Brak opisu.', '13:00:00', '14:35:00', '1017', 185, 50);
INSERT INTO conference_days VALUES(67, '2020-05-23', 200)
INSERT INTO conference_prices VALUES(67, '2020-05-22', 210)
INSERT INTO conference_prices VALUES(67, '2020-05-08', 168.0)
INSERT INTO workshops VALUES(177, 'Wykład z programowania w języku Ruby', 'Brak opisu.', '08:50:00', '10:25:00', '807', 50, 45);
INSERT INTO workshops VALUES(177, 'Wykład z uczenia maszynowego', 'Brak opisu.', '17:10:00', '20:25:00', '629', 80, 60);
INSERT INTO workshops VALUES(177, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '17:10:00', '19:35:00', '19', 90, 15);
INSERT INTO conferences VALUES ('Międzyuczelniane forum programistów', 'Wrocław', 'Lipowa', '52-119', '45', 0.75);
INSERT INTO conference_days VALUES(68, '2020-06-05', 200)
INSERT INTO conference_prices VALUES(68, '2020-06-05', 260)
INSERT INTO conference_prices VALUES(68, '2020-05-22', 208.0)
INSERT INTO workshops VALUES(178, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '14:40:00', '17:55:00', '402', 175, 90);
INSERT INTO workshops VALUES(178, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '13:50:00', '15:25:00', '210', 180, 40);
INSERT INTO workshops VALUES(178, 'Wykład z sieci neuronowych', 'Brak opisu.', '13:00:00', '14:35:00', '704', 115, 75);
INSERT INTO workshops VALUES(178, 'Wykład z programowania w języku Erlang', 'Brak opisu.', '15:30:00', '17:05:00', '813', 110, 75);
INSERT INTO conference_days VALUES(68, '2020-06-06', 200)
INSERT INTO conference_prices VALUES(68, '2020-06-05', 430)
INSERT INTO conference_prices VALUES(68, '2020-05-22', 344.0)
INSERT INTO workshops VALUES(179, 'Wykład z systemów operacyjnych', 'Brak opisu.', '15:30:00', '17:55:00', '1422', 120, 15);
INSERT INTO workshops VALUES(179, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '10:30:00', '14:35:00', '813', 75, 25);
INSERT INTO workshops VALUES(179, 'Warsztaty z programowania funkcyjnego', 'Brak opisu.', '10:30:00', '12:05:00', '913', 75, 35);
INSERT INTO workshops VALUES(179, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '18:00:00', '20:25:00', '803', 115, 25);
INSERT INTO workshops VALUES(179, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '11:20:00', '13:45:00', '222', 80, 90);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie informatyczne', 'Kraków', '3 Maja', '30-055', '48', 0.55);
INSERT INTO conference_days VALUES(69, '2020-06-10', 200)
INSERT INTO conference_prices VALUES(69, '2020-06-10', 210)
INSERT INTO conference_prices VALUES(69, '2020-05-27', 168.0)
INSERT INTO workshops VALUES(180, 'Wykład z uczenia maszynowego', 'Brak opisu.', '13:50:00', '17:05:00', '1216', 130, 70);
INSERT INTO workshops VALUES(180, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '17:10:00', '20:25:00', '609', 105, 75);
INSERT INTO workshops VALUES(180, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '14:40:00', '16:15:00', '1003', 165, 55);
INSERT INTO workshops VALUES(180, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '18:00:00', '20:25:00', '904', 125, 55);
INSERT INTO workshops VALUES(180, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '10:30:00', '13:45:00', '1118', 80, 30);
INSERT INTO conference_days VALUES(69, '2020-06-11', 200)
INSERT INTO conference_prices VALUES(69, '2020-06-10', 410)
INSERT INTO conference_prices VALUES(69, '2020-05-27', 328.0)
INSERT INTO workshops VALUES(181, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '18:00:00', '20:25:00', '900', 185, 60);
INSERT INTO workshops VALUES(181, 'Wykład z programowania deklaratywnego', 'Brak opisu.', '13:50:00', '16:15:00', '810', 70, 75);
INSERT INTO workshops VALUES(181, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '15:30:00', '19:35:00', '1221', 190, 15);
INSERT INTO workshops VALUES(181, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '11:20:00', '13:45:00', '914', 150, 75);
INSERT INTO conference_days VALUES(69, '2020-06-12', 200)
INSERT INTO conference_prices VALUES(69, '2020-06-10', 350)
INSERT INTO conference_prices VALUES(69, '2020-05-27', 280.0)
INSERT INTO workshops VALUES(182, 'Warsztaty z kryptografii', 'Brak opisu.', '12:10:00', '16:15:00', '1412', 185, 30);
INSERT INTO workshops VALUES(182, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '13:00:00', '17:05:00', '204', 75, 60);
INSERT INTO workshops VALUES(182, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '14:40:00', '17:05:00', '706', 80, 45);
INSERT INTO conference_days VALUES(69, '2020-06-13', 200)
INSERT INTO conference_prices VALUES(69, '2020-06-10', 230)
INSERT INTO conference_prices VALUES(69, '2020-05-27', 184.0)
INSERT INTO workshops VALUES(183, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '10:30:00', '14:35:00', '702', 170, 40);
INSERT INTO workshops VALUES(183, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '13:50:00', '17:05:00', '211', 70, 60);
INSERT INTO workshops VALUES(183, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '18:00:00', '20:25:00', '319', 115, 80);
INSERT INTO workshops VALUES(183, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '14:40:00', '17:05:00', '329', 165, 10);
INSERT INTO conferences VALUES ('Akademickie spotkanie programistów', 'Poznań', 'Wojska Polskiego', '61-740', '30', 0.3);
INSERT INTO conference_days VALUES(70, '2020-07-01', 200)
INSERT INTO conference_prices VALUES(70, '2020-07-01', 110)
INSERT INTO conference_prices VALUES(70, '2020-06-17', 88.0)
INSERT INTO workshops VALUES(184, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '13:00:00', '14:35:00', '1410', 90, 50);
INSERT INTO workshops VALUES(184, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '18:00:00', '20:25:00', '1221', 135, 95);
INSERT INTO workshops VALUES(184, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '18:00:00', '20:25:00', '916', 180, 40);
INSERT INTO workshops VALUES(184, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '13:00:00', '14:35:00', '804', 115, 65);
INSERT INTO workshops VALUES(184, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '13:00:00', '14:35:00', '5', 135, 25);
INSERT INTO conference_days VALUES(70, '2020-07-02', 200)
INSERT INTO conference_prices VALUES(70, '2020-07-01', 240)
INSERT INTO conference_prices VALUES(70, '2020-06-17', 192.0)
INSERT INTO workshops VALUES(185, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '18:00:00', '19:35:00', '1109', 100, 95);
INSERT INTO workshops VALUES(185, 'Warsztaty z aplikacji mobilnych', 'Brak opisu.', '08:50:00', '12:05:00', '927', 135, 50);
INSERT INTO workshops VALUES(185, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '11:20:00', '15:25:00', '1329', 55, 30);
INSERT INTO conference_days VALUES(70, '2020-07-03', 200)
INSERT INTO conference_prices VALUES(70, '2020-07-01', 230)
INSERT INTO conference_prices VALUES(70, '2020-06-17', 184.0)
INSERT INTO workshops VALUES(186, 'Wykład z kryptografii', 'Brak opisu.', '14:40:00', '16:15:00', '618', 55, 80);
INSERT INTO workshops VALUES(186, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '14:40:00', '18:45:00', '1408', 100, 30);
INSERT INTO workshops VALUES(186, 'Wykład z grafiki komputerowej', 'Brak opisu.', '16:20:00', '18:45:00', '117', 65, 80);
INSERT INTO workshops VALUES(186, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '10:30:00', '12:05:00', '28', 130, 30);
INSERT INTO workshops VALUES(186, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '11:20:00', '13:45:00', '1428', 105, 10);
INSERT INTO conference_days VALUES(70, '2020-07-04', 200)
INSERT INTO conference_prices VALUES(70, '2020-07-01', 210)
INSERT INTO conference_prices VALUES(70, '2020-06-17', 168.0)
INSERT INTO workshops VALUES(187, 'Wykład z systemów ekspertowych', 'Brak opisu.', '10:30:00', '13:45:00', '313', 110, 10);
INSERT INTO workshops VALUES(187, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '09:40:00', '13:45:00', '1115', 115, 15);
INSERT INTO workshops VALUES(187, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '12:10:00', '16:15:00', '200', 145, 35);
INSERT INTO workshops VALUES(187, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '12:10:00', '15:25:00', '1121', 190, 90);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie informatyczne', 'Stalowa Wola', 'Słowackiego', '37-450', '44', 1.0);
INSERT INTO conference_days VALUES(71, '2020-07-09', 200)
INSERT INTO conference_prices VALUES(71, '2020-07-09', 140)
INSERT INTO conference_prices VALUES(71, '2020-06-25', 112.0)
INSERT INTO workshops VALUES(188, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '13:00:00', '15:25:00', '229', 105, 40);
INSERT INTO workshops VALUES(188, 'Wykład z programowania w języku C++', 'Brak opisu.', '18:00:00', '20:25:00', '309', 190, 45);
INSERT INTO workshops VALUES(188, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '10:30:00', '14:35:00', '12', 80, 75);
INSERT INTO workshops VALUES(188, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '08:50:00', '11:15:00', '309', 130, 70);
INSERT INTO workshops VALUES(188, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '11:20:00', '14:35:00', '204', 190, 90);
INSERT INTO conference_days VALUES(71, '2020-07-10', 200)
INSERT INTO conference_prices VALUES(71, '2020-07-09', 210)
INSERT INTO conference_prices VALUES(71, '2020-06-25', 168.0)
INSERT INTO workshops VALUES(189, 'Wykład z programowania równoległego', 'Brak opisu.', '15:30:00', '17:55:00', '1429', 95, 90);
INSERT INTO workshops VALUES(189, 'Warsztaty z uczenia maszynowego', 'Brak opisu.', '08:00:00', '10:25:00', '921', 115, 60);
INSERT INTO workshops VALUES(189, 'Warsztaty z programowania w języku Java', 'Brak opisu.', '15:30:00', '17:05:00', '1104', 190, 30);
INSERT INTO workshops VALUES(189, 'Wykład z architektur procesorów', 'Brak opisu.', '13:00:00', '14:35:00', '1415', 190, 65);
INSERT INTO workshops VALUES(189, 'Wykład z programowania w języku PHP', 'Brak opisu.', '17:10:00', '20:25:00', '512', 140, 15);
INSERT INTO conference_days VALUES(71, '2020-07-11', 200)
INSERT INTO conference_prices VALUES(71, '2020-07-09', 330)
INSERT INTO conference_prices VALUES(71, '2020-06-25', 264.0)
INSERT INTO workshops VALUES(190, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '17:10:00', '19:35:00', '327', 115, 95);
INSERT INTO workshops VALUES(190, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '13:00:00', '15:25:00', '625', 160, 90);
INSERT INTO workshops VALUES(190, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '08:50:00', '10:25:00', '9', 185, 40);
INSERT INTO workshops VALUES(190, 'Wykład z grafiki komputerowej', 'Brak opisu.', '09:40:00', '11:15:00', '802', 135, 25);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje informatyczne', 'Lublin', 'Długa', '20-410', '10', 0.7);
INSERT INTO conference_days VALUES(72, '2020-08-07', 200)
INSERT INTO conference_prices VALUES(72, '2020-08-07', 330)
INSERT INTO conference_prices VALUES(72, '2020-07-24', 264.0)
INSERT INTO workshops VALUES(191, 'Wykład z cyberbezpieczeństwa', 'Brak opisu.', '15:30:00', '17:05:00', '607', 150, 35);
INSERT INTO workshops VALUES(191, 'Wykład z programowania w języku Haskell', 'Brak opisu.', '08:50:00', '12:05:00', '1411', 95, 40);
INSERT INTO workshops VALUES(191, 'Wykład z programowania w języku Rust', 'Brak opisu.', '16:20:00', '19:35:00', '924', 140, 20);
INSERT INTO workshops VALUES(191, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '14:40:00', '18:45:00', '520', 75, 45);
INSERT INTO workshops VALUES(191, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '14:40:00', '17:55:00', '226', 190, 80);
INSERT INTO conference_days VALUES(72, '2020-08-08', 200)
INSERT INTO conference_prices VALUES(72, '2020-08-07', 380)
INSERT INTO conference_prices VALUES(72, '2020-07-24', 304.0)
INSERT INTO workshops VALUES(192, 'Wykład z programowania równoległego', 'Brak opisu.', '14:40:00', '18:45:00', '913', 165, 65);
INSERT INTO workshops VALUES(192, 'Wykład z programowania w języku JavaScript', 'Brak opisu.', '15:30:00', '19:35:00', '1214', 185, 85);
INSERT INTO workshops VALUES(192, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '08:00:00', '12:05:00', '1011', 90, 80);
INSERT INTO workshops VALUES(192, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '16:20:00', '18:45:00', '619', 105, 65);
INSERT INTO workshops VALUES(192, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '17:10:00', '18:45:00', '602', 125, 40);
INSERT INTO workshops VALUES(192, 'Warsztaty z kryptografii', 'Brak opisu.', '13:50:00', '16:15:00', '1118', 140, 85);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje informatyków', 'Kielce', 'Wojska Polskiego', '25-511', '22', 0.35);
INSERT INTO conference_days VALUES(73, '2020-08-21', 200)
INSERT INTO conference_prices VALUES(73, '2020-08-21', 450)
INSERT INTO conference_prices VALUES(73, '2020-08-07', 360.0)
INSERT INTO workshops VALUES(193, 'Warsztaty z programowania w języku Haskell', 'Brak opisu.', '14:40:00', '18:45:00', '708', 195, 30);
INSERT INTO workshops VALUES(193, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '10:30:00', '13:45:00', '422', 180, 65);
INSERT INTO workshops VALUES(193, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '14:40:00', '17:05:00', '107', 140, 80);
INSERT INTO workshops VALUES(193, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '17:10:00', '20:25:00', '1017', 65, 50);
INSERT INTO conference_days VALUES(73, '2020-08-22', 200)
INSERT INTO conference_prices VALUES(73, '2020-08-21', 470)
INSERT INTO conference_prices VALUES(73, '2020-08-07', 376.0)
INSERT INTO workshops VALUES(194, 'Warsztaty z nowoczesnych aplikacji internetowych', 'Brak opisu.', '17:10:00', '18:45:00', '517', 125, 60);
INSERT INTO workshops VALUES(194, 'Warsztaty z programowania w języku Scala', 'Brak opisu.', '10:30:00', '12:05:00', '211', 155, 20);
INSERT INTO workshops VALUES(194, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '15:30:00', '17:55:00', '1306', 140, 55);
INSERT INTO workshops VALUES(194, 'Wykład z programowania obiektowego', 'Brak opisu.', '08:50:00', '12:05:00', '211', 175, 35);
INSERT INTO conferences VALUES ('Studencki festiwal kół naukowych', 'Wrocław', 'Królewska', '52-119', '28', 0.3);
INSERT INTO conference_days VALUES(74, '2020-09-04', 200)
INSERT INTO conference_prices VALUES(74, '2020-09-04', 260)
INSERT INTO conference_prices VALUES(74, '2020-08-21', 208.0)
INSERT INTO workshops VALUES(195, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '09:40:00', '12:55:00', '1308', 165, 85);
INSERT INTO workshops VALUES(195, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '11:20:00', '13:45:00', '707', 75, 40);
INSERT INTO workshops VALUES(195, 'Warsztaty z programowania w języku Asembler', 'Brak opisu.', '08:50:00', '11:15:00', '104', 170, 75);
INSERT INTO workshops VALUES(195, 'Wykład z programowania w języku PHP', 'Brak opisu.', '10:30:00', '12:55:00', '1114', 120, 65);
INSERT INTO conference_days VALUES(74, '2020-09-05', 200)
INSERT INTO conference_prices VALUES(74, '2020-09-04', 230)
INSERT INTO conference_prices VALUES(74, '2020-08-21', 184.0)
INSERT INTO workshops VALUES(196, 'Wykład z programowania w języku Java', 'Brak opisu.', '18:00:00', '20:25:00', '1108', 120, 15);
INSERT INTO workshops VALUES(196, 'Warsztaty z architektur procesorów', 'Brak opisu.', '08:50:00', '12:55:00', '410', 150, 70);
INSERT INTO workshops VALUES(196, 'Warsztaty z kryptografii', 'Brak opisu.', '14:40:00', '17:55:00', '1327', 185, 80);
INSERT INTO conferences VALUES ('Międzyuczelniane forum programistów', 'Rzeszów', 'Krótka', '35-030', '46', 0.85);
INSERT INTO conference_days VALUES(75, '2020-09-18', 200)
INSERT INTO conference_prices VALUES(75, '2020-09-18', 210)
INSERT INTO conference_prices VALUES(75, '2020-09-04', 168.0)
INSERT INTO workshops VALUES(197, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '17:10:00', '18:45:00', '121', 50, 15);
INSERT INTO workshops VALUES(197, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '14:40:00', '17:55:00', '819', 135, 80);
INSERT INTO workshops VALUES(197, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '17:10:00', '18:45:00', '620', 195, 60);
INSERT INTO workshops VALUES(197, 'Warsztaty z programowania w języku Rust', 'Brak opisu.', '14:40:00', '17:05:00', '506', 115, 65);
INSERT INTO conference_days VALUES(75, '2020-09-19', 200)
INSERT INTO conference_prices VALUES(75, '2020-09-18', 490)
INSERT INTO conference_prices VALUES(75, '2020-09-04', 392.0)
INSERT INTO workshops VALUES(198, 'Wykład z sieci neuronowych', 'Brak opisu.', '13:50:00', '15:25:00', '305', 90, 55);
INSERT INTO workshops VALUES(198, 'Warsztaty z programowania w języku C++', 'Brak opisu.', '17:10:00', '18:45:00', '422', 160, 10);
INSERT INTO workshops VALUES(198, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '11:20:00', '15:25:00', '805', 130, 85);
INSERT INTO workshops VALUES(198, 'Warsztaty z sieci neuronowych', 'Brak opisu.', '15:30:00', '19:35:00', '1303', 130, 50);
INSERT INTO workshops VALUES(198, 'Wykład z architektur procesorów', 'Brak opisu.', '18:00:00', '19:35:00', '905', 115, 95);
INSERT INTO conferences VALUES ('Ogólnopolskie konferencje kół naukowych', 'Poznań', 'Mickiewicza', '61-740', '49', 0.25);
INSERT INTO conference_days VALUES(76, '2020-09-25', 200)
INSERT INTO conference_prices VALUES(76, '2020-09-25', 320)
INSERT INTO conference_prices VALUES(76, '2020-09-11', 256.0)
INSERT INTO workshops VALUES(199, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '09:40:00', '12:55:00', '709', 120, 45);
INSERT INTO workshops VALUES(199, 'Warsztaty z programowania równoległego', 'Brak opisu.', '16:20:00', '18:45:00', '903', 80, 25);
INSERT INTO workshops VALUES(199, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '08:00:00', '10:25:00', '1003', 100, 25);
INSERT INTO workshops VALUES(199, 'Warsztaty z programowania niskopoziomowego', 'Brak opisu.', '09:40:00', '11:15:00', '816', 110, 95);
INSERT INTO conference_days VALUES(76, '2020-09-26', 200)
INSERT INTO conference_prices VALUES(76, '2020-09-25', 170)
INSERT INTO conference_prices VALUES(76, '2020-09-11', 136.0)
INSERT INTO workshops VALUES(200, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '16:20:00', '19:35:00', '1117', 140, 90);
INSERT INTO workshops VALUES(200, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '12:10:00', '13:45:00', '1118', 125, 70);
INSERT INTO workshops VALUES(200, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '13:50:00', '16:15:00', '0', 135, 25);
INSERT INTO conferences VALUES ('Studenckie forum kół naukowych', 'Szczecin', 'Krótka', '71-627', '44', 0.7);
INSERT INTO conference_days VALUES(77, '2020-10-07', 200)
INSERT INTO conference_prices VALUES(77, '2020-10-07', 490)
INSERT INTO conference_prices VALUES(77, '2020-09-23', 392.0)
INSERT INTO workshops VALUES(201, 'Wykład z architektur procesorów', 'Brak opisu.', '17:10:00', '20:25:00', '222', 85, 45);
INSERT INTO workshops VALUES(201, 'Wykład z programowania w języku Fortran', 'Brak opisu.', '18:00:00', '20:25:00', '921', 145, 25);
INSERT INTO conference_days VALUES(77, '2020-10-08', 200)
INSERT INTO conference_prices VALUES(77, '2020-10-07', 460)
INSERT INTO conference_prices VALUES(77, '2020-09-23', 368.0)
INSERT INTO workshops VALUES(202, 'Wykład z programowania w języku C++', 'Brak opisu.', '08:50:00', '12:05:00', '725', 110, 90);
INSERT INTO workshops VALUES(202, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '15:30:00', '17:55:00', '903', 180, 65);
INSERT INTO workshops VALUES(202, 'Wykład z programowania w języku C++', 'Brak opisu.', '08:50:00', '12:55:00', '505', 140, 45);
INSERT INTO workshops VALUES(202, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '14:40:00', '18:45:00', '224', 105, 15);
INSERT INTO workshops VALUES(202, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '13:50:00', '17:05:00', '800', 80, 30);
INSERT INTO conference_days VALUES(77, '2020-10-09', 200)
INSERT INTO conference_prices VALUES(77, '2020-10-07', 330)
INSERT INTO conference_prices VALUES(77, '2020-09-23', 264.0)
INSERT INTO workshops VALUES(203, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '17:10:00', '20:25:00', '803', 195, 95);
INSERT INTO workshops VALUES(203, 'Wykład z teorii kompilacji', 'Brak opisu.', '08:50:00', '12:05:00', '801', 150, 40);
INSERT INTO workshops VALUES(203, 'Wykład z programowania niskopoziomowego', 'Brak opisu.', '13:50:00', '15:25:00', '820', 110, 60);
INSERT INTO conference_days VALUES(77, '2020-10-10', 200)
INSERT INTO conference_prices VALUES(77, '2020-10-07', 430)
INSERT INTO conference_prices VALUES(77, '2020-09-23', 344.0)
INSERT INTO workshops VALUES(204, 'Warsztaty z kryptografii', 'Brak opisu.', '10:30:00', '13:45:00', '1302', 145, 80);
INSERT INTO workshops VALUES(204, 'Wykład z systemów ekspertowych', 'Brak opisu.', '13:00:00', '17:05:00', '1329', 175, 35);
INSERT INTO workshops VALUES(204, 'Wykład z systemów ekspertowych', 'Brak opisu.', '15:30:00', '18:45:00', '1102', 145, 75);
INSERT INTO workshops VALUES(204, 'Warsztaty z grafiki komputerowej', 'Brak opisu.', '13:00:00', '14:35:00', '216', 185, 30);
INSERT INTO workshops VALUES(204, 'Warsztaty z systemów operacyjnych', 'Brak opisu.', '15:30:00', '17:55:00', '301', 105, 50);
INSERT INTO conferences VALUES ('Ogólnopolskie spotkanie kół naukowych', 'Warszawa', 'Armii Krajowej', '02-495', '37', 0.9);
INSERT INTO conference_days VALUES(78, '2020-10-15', 200)
INSERT INTO conference_prices VALUES(78, '2020-10-15', 150)
INSERT INTO conference_prices VALUES(78, '2020-10-01', 120.0)
INSERT INTO workshops VALUES(205, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '09:40:00', '12:05:00', '822', 195, 20);
INSERT INTO workshops VALUES(205, 'Warsztaty z programowania obiektowego', 'Brak opisu.', '09:40:00', '11:15:00', '425', 85, 40);
INSERT INTO workshops VALUES(205, 'Wykład z programowania w języku PHP', 'Brak opisu.', '10:30:00', '14:35:00', '1121', 95, 45);
INSERT INTO workshops VALUES(205, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '14:40:00', '17:05:00', '902', 55, 70);
INSERT INTO conference_days VALUES(78, '2020-10-16', 200)
INSERT INTO conference_prices VALUES(78, '2020-10-15', 120)
INSERT INTO conference_prices VALUES(78, '2020-10-01', 96.0)
INSERT INTO workshops VALUES(206, 'Warsztaty z technologii gier komputerowych', 'Brak opisu.', '14:40:00', '17:05:00', '1128', 190, 55);
INSERT INTO workshops VALUES(206, 'Warsztaty z programowania w języku PHP', 'Brak opisu.', '16:20:00', '17:55:00', '213', 75, 75);
INSERT INTO workshops VALUES(206, 'Wykład z teorii kompilacji', 'Brak opisu.', '13:50:00', '17:05:00', '1002', 180, 10);
INSERT INTO workshops VALUES(206, 'Warsztaty z algorytmów grafowych', 'Brak opisu.', '13:00:00', '16:15:00', '1009', 195, 95);
INSERT INTO conference_days VALUES(78, '2020-10-17', 200)
INSERT INTO conference_prices VALUES(78, '2020-10-15', 190)
INSERT INTO conference_prices VALUES(78, '2020-10-01', 152.0)
INSERT INTO workshops VALUES(207, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '11:20:00', '12:55:00', '1016', 170, 70);
INSERT INTO workshops VALUES(207, 'Wykład z algorytmów grafowych', 'Brak opisu.', '09:40:00', '11:15:00', '1202', 190, 60);
INSERT INTO workshops VALUES(207, 'Wykład z algorytmów i struktur danych', 'Brak opisu.', '09:40:00', '12:55:00', '1114', 65, 30);
INSERT INTO conferences VALUES ('Studenckie zgromadzenie miłośników programowania', 'Szczecin', 'Dębowa', '71-627', '27', 0.15);
INSERT INTO conference_days VALUES(79, '2020-10-29', 200)
INSERT INTO conference_prices VALUES(79, '2020-10-29', 160)
INSERT INTO conference_prices VALUES(79, '2020-10-15', 128.0)
INSERT INTO workshops VALUES(208, 'Wykład z nowoczesnych technik programistycznych', 'Brak opisu.', '12:10:00', '15:25:00', '202', 120, 35);
INSERT INTO workshops VALUES(208, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '10:30:00', '13:45:00', '1427', 65, 95);
INSERT INTO workshops VALUES(208, 'Warsztaty z kryptografii', 'Brak opisu.', '13:00:00', '16:15:00', '703', 130, 80);
INSERT INTO workshops VALUES(208, 'Wykład z kryptografii', 'Brak opisu.', '18:00:00', '20:25:00', '601', 50, 85);
INSERT INTO conference_days VALUES(79, '2020-10-30', 200)
INSERT INTO conference_prices VALUES(79, '2020-10-29', 130)
INSERT INTO conference_prices VALUES(79, '2020-10-15', 104.0)
INSERT INTO workshops VALUES(209, 'Wykład z programowania w języku Asembler', 'Brak opisu.', '16:20:00', '20:25:00', '1222', 70, 40);
INSERT INTO workshops VALUES(209, 'Warsztaty z programowania w języku Python', 'Brak opisu.', '16:20:00', '19:35:00', '423', 90, 95);
INSERT INTO workshops VALUES(209, 'Wykład z teorii kompilacji', 'Brak opisu.', '12:10:00', '13:45:00', '1310', 160, 25);
INSERT INTO workshops VALUES(209, 'Warsztaty z programowania w języku Ruby', 'Brak opisu.', '14:40:00', '17:55:00', '1303', 90, 60);
INSERT INTO workshops VALUES(209, 'Warsztaty z programowania w języku JavaScript', 'Brak opisu.', '14:40:00', '17:05:00', '1209', 100, 10);
INSERT INTO conference_days VALUES(79, '2020-10-31', 200)
INSERT INTO conference_prices VALUES(79, '2020-10-29', 420)
INSERT INTO conference_prices VALUES(79, '2020-10-15', 336.0)
INSERT INTO workshops VALUES(210, 'Wykład z technologii gier komputerowych', 'Brak opisu.', '14:40:00', '17:55:00', '606', 105, 80);
INSERT INTO workshops VALUES(210, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '09:40:00', '13:45:00', '11', 125, 60);
INSERT INTO workshops VALUES(210, 'Warsztaty z przetwarzania języka naturalnego', 'Brak opisu.', '13:00:00', '17:05:00', '1223', 110, 50);
INSERT INTO workshops VALUES(210, 'Wykład z programowania funkcyjnego', 'Brak opisu.', '12:10:00', '15:25:00', '207', 185, 80);
INSERT INTO workshops VALUES(210, 'Warsztaty z nowoczesnych technik programistycznych', 'Brak opisu.', '15:30:00', '19:35:00', '707', 75, 80);
INSERT INTO conferences VALUES ('Studencki festiwal programistyczne', 'Szczecin', 'Dębowa', '71-627', '29', 0.3);
INSERT INTO conference_days VALUES(80, '2020-11-19', 200)
INSERT INTO conference_prices VALUES(80, '2020-11-19', 440)
INSERT INTO conference_prices VALUES(80, '2020-11-05', 352.0)
INSERT INTO workshops VALUES(211, 'Wykład z teorii kompilacji', 'Brak opisu.', '08:50:00', '12:55:00', '1426', 120, 80);
INSERT INTO workshops VALUES(211, 'Wykład z programowania w języku Java', 'Brak opisu.', '13:50:00', '15:25:00', '203', 135, 95);
INSERT INTO workshops VALUES(211, 'Wykład z kryptografii', 'Brak opisu.', '18:00:00', '19:35:00', '1411', 170, 30);
INSERT INTO conference_days VALUES(80, '2020-11-20', 200)
INSERT INTO conference_prices VALUES(80, '2020-11-19', 300)
INSERT INTO conference_prices VALUES(80, '2020-11-05', 240.0)
INSERT INTO workshops VALUES(212, 'Warsztaty z programowania w języku Fortran', 'Brak opisu.', '15:30:00', '18:45:00', '501', 120, 70);
INSERT INTO workshops VALUES(212, 'Wykład z aplikacji mobilnych', 'Brak opisu.', '18:00:00', '20:25:00', '916', 60, 60);
INSERT INTO workshops VALUES(212, 'Warsztaty z programowania deklaratywnego', 'Brak opisu.', '09:40:00', '12:05:00', '200', 80, 85);
INSERT INTO workshops VALUES(212, 'Warsztaty z programowania w języku Julia', 'Brak opisu.', '14:40:00', '17:05:00', '204', 70, 75);
INSERT INTO conference_days VALUES(80, '2020-11-21', 200)
INSERT INTO conference_prices VALUES(80, '2020-11-19', 320)
INSERT INTO conference_prices VALUES(80, '2020-11-05', 256.0)
INSERT INTO workshops VALUES(213, 'Wykład z sieci neuronowych', 'Brak opisu.', '16:20:00', '20:25:00', '505', 55, 70);
INSERT INTO workshops VALUES(213, 'Warsztaty z systemów ekspertowych', 'Brak opisu.', '08:00:00', '12:05:00', '1306', 195, 95);
INSERT INTO workshops VALUES(213, 'Wykład z nowoczesnych aplikacji internetowych', 'Brak opisu.', '12:10:00', '16:15:00', '1107', 155, 40);

