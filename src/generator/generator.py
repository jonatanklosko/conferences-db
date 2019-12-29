import random

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

class Generator:
    @staticmethod
    def __useStatement(file, dataBaseName):
        ExportTools.appendLine(file, "USE {};".format(dataBaseName))
    
    @staticmethod
    def __emptyDataBase(file):
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
        ExportTools.appendLine(file, "")
    
    def CREATE(dataBase):
        file = ExportTools.openFile("baza", "sql", withClear=True)
        
        Generator.__useStatement(file, dataBase)
        Generator.__emptyDataBase(file)
        
        ExportTools.closeFile(file)
        
Generator.CREATE("Projekt")