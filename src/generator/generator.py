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
        discount = numpy.random.randint(21)
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
    def getPrice():
        pass
    
    @staticmethod
    def getAttendeesLimit():
        pass
    
    @staticmethod
    def getCompanyName():
        pass
    
    @staticmethod
    def getPhoneNumber():
        pass
    
    @staticmethod
    def getEmail():
        pass

class Generator:
    @staticmethod
    def __useStatement(file, dataBaseName):
        ExportTools.appendLine(file, "USE {};".format(dataBaseName))
    
    @staticmethod
    def __emptyDataBase(file):
        # prepares queries to make sure that database is empty
        ExportTools.appendLine(file, "DELETE FROM booking_payments;")
        ExportTools.appendLine(file, "DELETE FROM companies;")
        ExportTools.appendLine(file, "DELETE FROM conference_prices;")
        ExportTools.appendLine(file, "DELETE FROM individual_clients;")
        ExportTools.appendLine(file, "DELETE FROM workshop_enrollments;")
        ExportTools.appendLine(file, "DELETE FROM day_enrollments;")
        ExportTools.appendLine(file, "DELETE FROM attendees;")
        ExportTools.appendLine(file, "DELETE FROM people;")
        ExportTools.appendLine(file, "DELETE FROM workshop_bookings;")
        ExportTools.appendLine(file, "DELETE FROM day_bookings;")
        ExportTools.appendLine(file, "DELETE FROM workshop_interests;")
        ExportTools.appendLine(file, "DELETE FROM bookings;")
        ExportTools.appendLine(file, "DELETE FROM clients;")
        ExportTools.appendLine(file, "DELETE FROM workshops;")
        ExportTools.appendLine(file, "DELETE FROM conference_days;")
        ExportTools.appendLine(file, "DELETE FROM conferences;")
        ExportTools.appendLine(file, "DBCC CHECKIDENT(conferences, RESEED, 0);")
        ExportTools.appendLine(file, "")
    
    @staticmethod
    def __makeConferences(file):
        # initializes conferences for a 3-year-run of a company
        abs_beginning = datetime.datetime(2018, 1, 7)
        week = datetime.timedelta(days=7)
        
        confDistribution = RandomTools.getPoissonConfDistribution(2,153)
        # gets conference distribution during a 3-year period (as weeks)
        # based on a Poisson distribution (expected 2 conferences per month)
        
        conferences = list()
        
        for week_no in confDistribution:
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
            conferences.append((start, end))
        
        #for start, end in conferences:
        #    print(start.isoformat()[:10], end.isoformat()[:10])
        
        ExportTools.appendLine(file, "")
    
    def CREATE(dataBase):
        file = ExportTools.openFile("baza", "sql", withClear=True)
        
        Generator.__useStatement(file, dataBase)
        Generator.__emptyDataBase(file)
        Generator.__makeConferences(file)
        
        ExportTools.closeFile(file)

Generator.CREATE("Projekt")