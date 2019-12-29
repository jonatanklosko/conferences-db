import json
import pyodbc
import sys

class SQLRunner:
    @staticmethod
    def __readFile(filename, extension):
        directory = filename + "." + extension
        file = open(directory, "r")
        content = file.read()
        file.close()
        return content
    
    def MAIN(batch="baza", show=False):
        parameters = json.loads(SQLRunner.__readFile("parameters", "txt"))
        connectionDetails =\
          'Driver={SQL Server};'+\
          'Server={};'.format(parameters['server'])+\
          'Database={};'.format(parameters['database'])+\
          'Trusted_Connection=yes;';
        
        print("Connecting to the server")
        conn = pyodbc.connect(connectionDetails)
        
        batchSql = SQLRunner.__readFile(batch, "sql");
        cursor = conn.cursor()
        
        print("Executing the sql file")
        cursor.execute('SELECT * FROM conferences')
        
        print("Done")
        
        if show:
            for row in cursor:
                print(row)
        
        conn.close()

if __name__ == '__main__':
    if len(sys.argv) == 1:
        SQLRunner.MAIN()
    elif len(sys.argv) == 2:
        SQLRunner.MAIN(batch=str(sys.argv[1]), show=False)
    else:
        SQLRunner.MAIN(batch=str(sys.argv[1]), show=bool(sys.argv[2]))
else:
    SQLRunner.MAIN()