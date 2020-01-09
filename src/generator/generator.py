import numpy
import datetime

class ExportTools:
    @staticmethod
    def openFile(filename, extension, withClear=False):
        directory = filename + "." + extension
        if withClear:
            ExportTools.clearFile(directory)
        
        file = open(directory, "a", encoding='UTF-8')
        return file
    
    @staticmethod
    def clearFile(directory):
        open(directory, "w", encoding='UTF-8').close()
    
    @staticmethod
    def appendLine(file, line):
        file.write(line + "\n")
    
    @staticmethod
    def closeFile(file):
        file.close()

class RandomTools:
    @staticmethod
    def getPoissonConfDistribution(lambdaParam, maxValue):
        confDistribution = list()
        
        value = -1
        while True:
            s = numpy.random.poisson(lambdaParam - 1) + 1
            value += s
            if value < maxValue:
                confDistribution.append(value)
            else:
                break
        
        return confDistribution
    
    @staticmethod
    def getConfDuration():
        r = numpy.random.random()
        if r < 0.5:
            confDuration = 2
        elif r < 0.9:
            confDuration = 3
        else:
            confDuration = 4
        
        return confDuration
    
    @staticmethod
    def getNumOfWorkshops():
        numOfWorkshops = 2
        for _ in range(4):
            numOfWorkshops += 1 if numpy.random.random() < 0.5 else 0
        
        return numOfWorkshops
    
    @staticmethod
    def getConfName():
        firstpart = [
            "Międzyuczelniane forum ",
            "Ogólnopolskie konferencje ",
            "Ogólnopolskie spotkanie ",
            "Studencki festiwal ",
            "Akademickie konferencje ",
            "Powszechne konferencje ",
            "Studenckie zgromadzenie ",
            "Studenckie forum ",
            "Studenckie zgromadzenie ",
            "Akademickie spotkanie ",
            "Studenckie warsztaty ",
            "Ademickie zebranie "
           ]
        secondpart = [
            "programistów",
            "informatyków",
            "miłośników programowania",
            "informatyczne",
            "programistyczne",
            "kół naukowych"
        ]
        a = numpy.random.randint(len(firstpart))
        b = numpy.random.randint(len(secondpart))
        return firstpart[a] + secondpart[b]
    
    @staticmethod
    def getCityAndPostalCode():
        cities_postal = [
            ("Kraków", "30-055"),
            ("Katowice", "40-236"),
            ("Szczecin", "71-627"),
            ("Lublin", "20-410"),
            ("Kielce", "25-511"),
            ("Rzeszów", "35-030"),
            ("Warszawa", "02-495"),
            ("Stalowa Wola", "37-450"),
            ("Wrocław", "52-119"),
            ("Poznań", "61-740")
        ]
        a = numpy.random.randint(len(cities_postal))
        return cities_postal[a][0], cities_postal[a][1]
    
    @staticmethod
    def getStreetAndBuildingNo():
        street = [
            "Długa",
            "Krótka",
            "Lipowa",
            "Dębowa",
            "Mickiewicza",
            "Słowackiego",
            "3 Maja",
            "Armii Krajowej",
            "Wojska Polskiego",
            "Królewska"
        ]
        a = numpy.random.randint(len(street))
        building = numpy.random.randint(50)
        return street[a], building
    
    @staticmethod
    def getStudentDiscount():
        discount = numpy.random.randint(20)
        return float(discount) / 20
    
    @staticmethod
    def getWorkshopName():
        firstpart = [
            "Warsztaty z ",
            "Wykład z "
           ]
        secondpart = [
            "programowania obiektowego",
            "programowania funkcyjnego",
            "cyberbezpieczeństwa",
            "nowoczesnych technik programistycznych",
            "kryptografii",
            "nowoczesnych aplikacji internetowych",
            "algorytmów i struktur danych",
            "algorytmów grafowych",
            "programowania niskopoziomowego",
            "programowania deklaratywnego",
            "systemów operacyjnych",
            "architektur procesorów",
            "teorii kompilacji",
            "programowania w języku Python",
            "programowania w języku Scala",
            "programowania w języku C++",
            "programowania w języku Rust",
            "programowania w języku Fortran",
            "programowania w języku PHP",
            "programowania w języku Asembler",
            "programowania w języku Haskell",
            "programowania w języku Erlang",
            "programowania w języku JavaScript",
            "programowania w języku Ruby",
            "programowania w języku Java",
            "programowania w języku Julia",
            "uczenia maszynowego",
            "technologii gier komputerowych",
            "grafiki komputerowej",
            "programowania równoległego",
            "sieci neuronowych",
            "systemów ekspertowych",
            "przetwarzania języka naturalnego",
            "aplikacji mobilnych"
        ]
        a = numpy.random.randint(len(firstpart))
        b = numpy.random.randint(len(secondpart))
        return firstpart[a] + secondpart[b]
    
    @staticmethod
    def getWorkshopDescription():
        return "Brak opisu."
    
    @staticmethod
    def getRoomNo():
        return numpy.random.randint(15) * 100 + numpy.random.randint(30)
    
    @staticmethod
    def getWorkshopPrice():
        return 50 + 5*numpy.random.randint(30)
    
    @staticmethod
    def getConfDayPrice():
        return 100 + 10*numpy.random.randint(40)
    
    @staticmethod
    def getConfDayAttendeesLimit():
        return 1000
    
    @staticmethod
    def getWorkshopAttendeesLimit():
        return 10 + 5*numpy.random.randint(18)
    
    @staticmethod
    def getCompany(getRandom=True):
        companies = [
            ("CD Projekt S.A.", "contact@cdprojekt.pl"),
            ("Techland Sp. z o.o.", "contact@techland.pl"),
            ("People Can Fly Sp. z o.o.", "contact@peoplecanfly.pl"),
            ("The Farm 51 Sp z o.o.", "contact@thefarm51.pl"),
            ("11 Bit Studios S.A.", "contact@11bitstudios.pl")
        ]
        if getRandom:
            a = numpy.random.randint(len(companies))
            return companies[a]
        else:
            return companies
    
    @staticmethod
    def getPhoneNumber(seed=-1):
        prime = 71524157
        
        if seed == -1: seed = 503541664
        a = numpy.random.randint(50) + 1
        
        return 200000000 + (seed + a * prime) % 600000000
    
    @staticmethod
    def getTimeSlot():
        min_start = datetime.datetime(1, 1, 1, 8, 0)
        delta = datetime.timedelta(minutes=50)
        beforeend = datetime.timedelta(minutes=5)
        
        s = numpy.random.randint(13)
        t = 2 + numpy.random.randint(4)
        
        if s + t >= 16:
            t = 16 - s - 1
        
        start = min_start + s * delta
        end = min_start + (s+t) * delta - beforeend
        
        return start.time(), end.time()
    
    @staticmethod
    def getFirstLastName():
        firstnames =\
            ["Lena", "Jakub", "Julia", "Kacper", "Zuzanna", "Filip", "Maja", "Szymon",\
             "Zofia", "Jan", "Amelia", "Antoni", "Hanna", "Michał", "Aleksandra",\
             "Wojciech", "Wiktoria", "Mateusz", "Natalia", "Bartosz", "Oliwia", "Adam",\
             "Alicja", "Franciszek", "Nikola", "Piotr", "Maria", "Aleksander", "Emilia",\
             "Mikołaj", "Anna", "Wiktor", "Nadia", "Igor", "Gabriela", "Marcel",\
             "Martyna", "Dawid", "Antonina", "Alan"]
        lastnames =\
            ["Nowak", "Wójcik", "Kowalczyk", "Woźniak", "Mazur", "Krawczk", "Kaczmarek",\
             "Zając", "Król", "Wróbel", "Wieczorek", "Stępień", "Dudek", "Adamczyk",\
             "Pawlak", "Sikora", "Walczak", "Baran", "Michalak", "Szewczyk", "Duda"]
        
        f = numpy.random.randint(len(firstnames))
        l = numpy.random.randint(len(lastnames))
        return firstnames[f], lastnames[l]
    
    @staticmethod
    def getEmailPerson(firstname, lastname):
        num = numpy.random.randint(10000)
        return "{}{}{}@email.pl".format(firstname.lower(), lastname.lower(), num)
    
    @staticmethod
    def getStudentCard(seed=-1):
        prime = 11701
        
        if seed == -1: seed = 387541
        a = numpy.random.randint(50) + 1
        
        isStudent = False
        r = numpy.random.random()
        if r < 0.4: isStudent = True
        
        newValue = 200000 + (seed + a * prime) % 300000
        
        return isStudent, newValue
    
    @staticmethod
    def getNextPerson(num, seed=-1):
        prime = 739
        
        if seed == -1: seed = numpy.random.randint(num)
        a = numpy.random.randint(15) + 1
        
        return 1 + (seed + a * prime) % num
    
    @staticmethod
    def getNextCompany(num, seed=-1):
        prime = 17
        
        if seed == -1: seed = numpy.random.randint(num)
        
        return 1 + (seed + prime) % num

class Generator:
    @staticmethod
    def __useStatement(file, dataBaseName):
        ExportTools.appendLine(file, "USE {};".format(dataBaseName))
    
    @staticmethod
    def __emptyDataBase(file):
        # prepares queries to make sure that database is empty
        
        ExportTools.appendLine(file, "EXEC sp_msforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT all';")
        
        # inserting dummy values (just in case)
        # needed due to dbcc checkident usage to assure right indexing
        ExportTools.appendLine(file, "DELETE FROM conferences;")
        ExportTools.appendLine(file, "INSERT INTO conferences VALUES ('.', '.', '.', '.', '.', 1);")
        ExportTools.appendLine(file, "DELETE FROM conference_days;")
        ExportTools.appendLine(file, "INSERT INTO conference_days VALUES (1, '2050-01-01', 1);")
        ExportTools.appendLine(file, "DELETE FROM conference_prices;")
        ExportTools.appendLine(file, "INSERT INTO conference_prices VALUES (1, '2050-01-01', 1);")
        ExportTools.appendLine(file, "DELETE FROM workshops;")
        ExportTools.appendLine(file, "INSERT INTO workshops VALUES (1, '.', '.', '08:00:00', '08:00:00', '.', 1, 1);")
        ExportTools.appendLine(file, "DELETE FROM people;")
        ExportTools.appendLine(file, "INSERT INTO people VALUES ('.', '.', '.');")
        ExportTools.appendLine(file, "DELETE FROM clients;")
        ExportTools.appendLine(file, "INSERT INTO clients VALUES ('.', '.', '.', '.');")
        ExportTools.appendLine(file, "DELETE FROM companies;")
        ExportTools.appendLine(file, "INSERT INTO companies VALUES (1, '.', '.');")
        ExportTools.appendLine(file, "DELETE FROM individual_clients;")
        ExportTools.appendLine(file, "INSERT INTO individual_clients VALUES (1, 1, '.', '.');")
        ExportTools.appendLine(file, "DELETE FROM booking_payments;")
        ExportTools.appendLine(file, "INSERT INTO booking_payments VALUES (1, 1, 1);")
        ExportTools.appendLine(file, "DELETE FROM workshop_enrollments;")
        ExportTools.appendLine(file, "INSERT INTO workshop_enrollments VALUES (1, 1);")
        ExportTools.appendLine(file, "DELETE FROM day_enrollments;")
        ExportTools.appendLine(file, "INSERT INTO day_enrollments VALUES (1, 1);")
        ExportTools.appendLine(file, "DELETE FROM attendees;")
        ExportTools.appendLine(file, "INSERT INTO attendees VALUES (1);")
        ExportTools.appendLine(file, "DELETE FROM workshop_bookings;")
        ExportTools.appendLine(file, "INSERT INTO workshop_bookings VALUES (1, 1, 1, '1900-01-01 00:00:00');")
        ExportTools.appendLine(file, "DELETE FROM day_bookings;")
        ExportTools.appendLine(file, "INSERT INTO day_bookings VALUES (1, 1, 1, '1900-01-01 00:00:00');")
        ExportTools.appendLine(file, "DELETE FROM workshop_interests;")
        ExportTools.appendLine(file, "INSERT INTO workshop_interests VALUES (1, 1);")
        ExportTools.appendLine(file, "DELETE FROM bookings;")
        ExportTools.appendLine(file, "INSERT INTO bookings VALUES (1, 1, '1900-01-01 00:00:00','1900-01-01 00:00:00');")
        ExportTools.appendLine(file, "")
        
        # cleaning up and reseeding
        ExportTools.appendLine(file, "DELETE FROM booking_payments;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(booking_payments, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM companies;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(companies, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM conference_prices;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(conference_prices, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM individual_clients;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(individual_clients, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM workshop_enrollments;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(workshop_enrollments, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM day_enrollments;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(day_enrollments, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM attendees;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(attendees, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM people;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(people, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM workshop_bookings;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(workshop_bookings, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM day_bookings;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(day_bookings, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM workshop_interests;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(workshop_interests, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM bookings;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(bookings, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM clients;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(clients, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM workshops;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(workshops, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM conference_days;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(conference_days, RESEED, 0);")
        ExportTools.appendLine(file, "DELETE FROM conferences;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(conferences, RESEED, 0);")
        
        ExportTools.appendLine(file, "EXEC sp_msforeachtable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT all';")
        ExportTools.appendLine(file, "")
    
    @staticmethod
    def __makeConferences(file):
        # initializes conferences for a 3-year-run of a company
        abs_beginning = datetime.datetime(2018, 1, 7)
        week = datetime.timedelta(days=7)
        day = datetime.timedelta(days=1)
        
        confDistribution = RandomTools.getPoissonConfDistribution(2,153)
        # gets conference distribution during a 3-year period (as weeks)
        # based on a Poisson distribution (expected 2 conferences per month)
        
        conferences = list()
        confdays = list()
        confprices = list()
        workshops = list()
        
        conf_idx = 0
        confday_idx = 0
        
        for week_no in confDistribution:
            conf_idx += 1
            
            duration = RandomTools.getConfDuration()
            end = abs_beginning + week_no * week
            start = end - datetime.timedelta(days=duration)
            
            name = RandomTools.getConfName()
            city, postal = RandomTools.getCityAndPostalCode()
            street, build_no = RandomTools.getStreetAndBuildingNo()
            discount = RandomTools.getStudentDiscount()
            
            conf_query = "INSERT INTO conferences VALUES ('{}', '{}', '{}', '{}', '{}', {});".format(
                name,
                city,
                street,
                postal,
                build_no,
                discount
            )
            ExportTools.appendLine(file, conf_query)
            
            confday_price = RandomTools.getConfDayPrice()
                
            confprice_query = "INSERT INTO conference_prices VALUES({}, '{}', {})".format(
                conf_idx,
                start.isoformat()[:10],
                confday_price
            )
            ExportTools.appendLine(file, confprice_query)
            confprices.append((confday_idx, conf_idx, confday_price))
                
            confprice_query_d = "INSERT INTO conference_prices VALUES({}, '{}', {})".format(
                conf_idx,
                (start - 2 * week).isoformat()[:10],
                0.8 * confday_price
            )
            ExportTools.appendLine(file, confprice_query_d)
            confprices.append((confday_idx, conf_idx, 0.8 * confday_price))
            
            for i in range(duration):
                confday_idx += 1
                
                date = start + i * day
                daylimit = RandomTools.getConfDayAttendeesLimit()
                
                confday_query = "INSERT INTO conference_days VALUES({}, '{}', {})".format(
                    conf_idx,
                    date.isoformat()[:10],
                    daylimit
                )
                ExportTools.appendLine(file, confday_query)
                
                workshopsnum = RandomTools.getNumOfWorkshops()
                confdays.append((conf_idx, confday_idx, workshopsnum))
                
                for i in range(workshopsnum):
                    workshop_name = RandomTools.getWorkshopName()
                    descr = RandomTools.getWorkshopDescription()
                    timeslot_start, timeslot_end = RandomTools.getTimeSlot()
                    room = RandomTools.getRoomNo()
                    workshop_price = RandomTools.getWorkshopPrice()
                    attendee_limit = RandomTools.getWorkshopAttendeesLimit()
                    
                    workshop_query = "INSERT INTO workshops VALUES"+\
                                     "({}, '{}', '{}', '{}', '{}', '{}', {}, {});".format(
                        confday_idx,
                        workshop_name,
                        descr,
                        timeslot_start,
                        timeslot_end,
                        room,
                        workshop_price,
                        attendee_limit
                    )
                    ExportTools.appendLine(file, workshop_query)
                    workshops.append((confday_idx, conf_idx, workshop_price, attendee_limit))
            
            conferences.append((duration, start, discount))
        
        ExportTools.appendLine(file, "")
        return conferences, confdays, confprices, workshops
    
    @staticmethod
    def __makePeople(file):
        numofpeople = 1500 + numpy.random.randint(1000)
        
        for _ in range(numofpeople):
            firstname, lastname = RandomTools.getFirstLastName()
            email = RandomTools.getEmailPerson(firstname, lastname)
            
            people_query = "INSERT INTO people VALUES('{}', '{}', '{}')".format(
                firstname,
                lastname,
                email
            )
            ExportTools.appendLine(file, people_query)
        
        ExportTools.appendLine(file, "")
        return numofpeople
    
    @staticmethod
    def __fillCompanies(file):
        companies = RandomTools.getCompany(getRandom=False)
        numofcompanies = len(companies)
        
        cli_idx = 0
        phone_num = -1 # initial seed
        
        for name, email in companies:
            cli_idx += 1
            
            city, postal = RandomTools.getCityAndPostalCode()
            street, build_no = RandomTools.getStreetAndBuildingNo()
            
            client_query = "INSERT INTO clients VALUES('{}', '{}', '{}', '{}')".format(
                city,
                street,
                postal,
                build_no
            )
            ExportTools.appendLine(file, client_query)
            
            phone_num = RandomTools.getPhoneNumber(phone_num)
            company_query = "INSERT INTO companies VALUES({}, '{}', '{}')".format(
                cli_idx,
                name,
                phone_num
            )
            ExportTools.appendLine(file, company_query)
        
        ExportTools.appendLine(file, "")
        return numofcompanies
    
    def __fillIndividuals(file, numofcompanies, numofpeople):
        cli_idx = numofcompanies
        per_idx = 0
        phone_num = -1 # initial seed
        studentcard_num = -1 # initial seed
        studentbool = list()
        
        for _ in range(numofpeople):
            cli_idx += 1
            per_idx += 1
            
            city, postal = RandomTools.getCityAndPostalCode()
            street, build_no = RandomTools.getStreetAndBuildingNo()
            
            client_query = "INSERT INTO clients VALUES('{}', '{}', '{}', '{}')".format(
                city,
                street,
                postal,
                build_no
            )
            ExportTools.appendLine(file, client_query)
            
            phone_num = RandomTools.getPhoneNumber(phone_num)
            isStudent, studentcard_num = RandomTools.getStudentCard(studentcard_num)
            
            if isStudent:
                individuals_query = "INSERT INTO individual_clients VALUES({}, {}, '{}', '{}')".format(
                    cli_idx,
                    per_idx,
                    phone_num,
                    studentcard_num
                )
                ExportTools.appendLine(file, individuals_query)
            else:
                individuals_query = "INSERT INTO individual_clients VALUES({}, {}, '{}', {})".format(
                    cli_idx,
                    per_idx,
                    phone_num,
                    "NULL"
                )
                ExportTools.appendLine(file, individuals_query)
            
            studentbool.append(isStudent)
            
            attendees_query = "INSERT INTO attendees VALUES({})".format(
                per_idx
            )
            ExportTools.appendLine(file, attendees_query)
        
        ExportTools.appendLine(file, "")
        return studentbool
    
    @staticmethod
    def __assingPeopleToWorkshops(
            file, conferences, confdays, confprices, workshops, numofcompanies, numofpeople, isstudent):
        conf_idx = 0
        confprice_idx = -1
        confday_idx = 0
        workshop_idx = 0
        
        booking_idx = 0
        day_booking_idx = 0
        work_booking_idx = 0
        day_enroll_idx = 0
        
        day = datetime.timedelta(days=1)
        
        charge = [0]*numofpeople
        withcompany = [0]*numofpeople
        people = list()
        
        for conf_duration, start, discount in conferences:
            conf_idx += 1
            confprice_idx += 2
            person_seed = -1
            company_seed = -1
            
            for i, _ in enumerate(withcompany): withcompany[i] = 0
            
            # company reservations
            
            for i in range(numpy.random.randint(numofcompanies)):
                booking_idx += 1
                confday_idx_t = confday_idx
                workshop_idx_s = workshop_idx
                
                c_charge = 0
                people.clear()
                company_seed = RandomTools.getNextCompany(numofcompanies, company_seed)
                
                bookings_query = "INSERT INTO bookings VALUES({}, {}, '{}', {})".format(
                    company_seed,
                    conf_idx,
                    (start - (15 + numpy.random.randint(10)) * day).isoformat()[:10] + " 09:00:00",
                    "NULL"
                )
                ExportTools.appendLine(file, bookings_query)
                
                for _ in range(conf_duration):
                    confday_idx_t += 1
                    workshop_idx_t = workshop_idx_s
                    daybooking = [booking_idx, confday_idx_t, 0, "NULL"]
                    for i, _ in enumerate(charge): charge[i] = 0

                    _, _, workshopsnum = confdays[confday_idx_t-1]
                    workshopbook_queries = list()
                    
                    dayenrolls = list()
                    workenrolls = list()
                    
                    for _ in range(workshopsnum):
                        workshop_idx_t += 1

                        _, _, workshop_price, attendee_limit = workshops[workshop_idx_t-1]
                        people_this_workshop = 0
                        
                        for i in range(attendee_limit):
                            person_seed = RandomTools.getNextPerson(numofpeople, person_seed)
                            if numpy.random.random() < 0.2:
                                if withcompany[person_seed-1] == 0:
                                    withcompany[person_seed-1] = company_seed
                                elif withcompany[person_seed-1] != company_seed:
                                    continue
                                if daybooking[2] == 0:
                                    day_booking_idx += 1
                                    work_booking_idx += 1
                                daybooking[2] += 1
                                
                                if charge[person_seed-1] == 0:
                                    c_charge += confprices[confprice_idx][2]
                                    charge[person_seed-1] = 1
                                
                                c_charge += workshop_price
                                people_this_workshop += 1
                                
                                alreadyenrolled = False
                                for _, pers in dayenrolls:
                                    if pers == person_seed:
                                        alreadyenrolled = True
                                
                                if not alreadyenrolled:
                                    dayenrolls.append((day_booking_idx, person_seed))
                                    day_enroll_idx += 1
                                else:
                                    continue
                                
                                workenrolls.append((day_enroll_idx, work_booking_idx))
                        
                        if people_this_workshop > 0:
                            workshopbook_query = "INSERT INTO workshop_bookings VALUES({}, {}, {}, {})".format(
                                day_booking_idx,
                                workshop_idx_t,
                                people_this_workshop,
                                "NULL"
                            )
                            workshopbook_queries.append(workshopbook_query)
                            
                            a = workshops[workshop_idx_t-1]
                            workshops[workshop_idx_t-1] = (a[0], a[1], a[2], a[3]-people_this_workshop)
                    
                    if daybooking[2] > 0:
                        daybook_query = "INSERT INTO day_bookings VALUES({}, {}, {}, {})".format(
                            daybooking[0],
                            daybooking[1],
                            daybooking[2],
                            daybooking[3],
                        )
                        ExportTools.appendLine(file, daybook_query)
                    
                        for workshopbook_query in workshopbook_queries:
                            ExportTools.appendLine(file, workshopbook_query)
                    
                        for daybooking_id, attendee in dayenrolls:
                            dayenrolls_query = "INSERT INTO day_enrollments VALUES({}, {})".format(
                                daybooking_id,
                                attendee
                            )
                            ExportTools.appendLine(file, dayenrolls_query)
                        
                        for dayenroll_id, workbooking_id in workenrolls:
                            workenrolls_query = "INSERT INTO workshop_enrollments VALUES({}, {})".format(
                                dayenroll_id,
                                workbooking_id
                            )
                            ExportTools.appendLine(file, workenrolls_query)
            
                payments_query = "INSERT INTO booking_payments VALUES({}, {}, '{}')".format(
                    booking_idx,
                    c_charge,
                    (start - (1 + numpy.random.randint(5)) * day).isoformat()[:10] + " 09:00:00"
                )
                ExportTools.appendLine(file, payments_query)
            
            for i, _ in enumerate(charge): charge[i] = 0
            
            for _ in range(conf_duration):
                confday_idx += 1
                
                _, _, workshopsnum = confdays[confday_idx-1]
                
                for _ in range(workshopsnum):
                    workshop_idx += 1
                    
                    _, _, workshop_price, attendee_limit = workshops[workshop_idx-1]
                    
                    for i in range(attendee_limit):
                        person_seed = RandomTools.getNextPerson(numofpeople, person_seed)
                        people.append(person_seed)
    
    def CREATE(dataBase):
        file = ExportTools.openFile("baza", "sql", withClear=True)
        
        Generator.__useStatement(file, dataBase)
        Generator.__emptyDataBase(file)
        
        conferences, confdays, confprices, workshops = Generator.__makeConferences(file)
        numofpeople = Generator.__makePeople(file)
        numofcompanies = Generator.__fillCompanies(file)
        isstudent = Generator.__fillIndividuals(file, numofcompanies, numofpeople)
        
        Generator.__assingPeopleToWorkshops(
            file, conferences, confdays, confprices, workshops, numofcompanies, numofpeople, isstudent)
        
        ExportTools.closeFile(file)

        
Generator.CREATE("Projekt")