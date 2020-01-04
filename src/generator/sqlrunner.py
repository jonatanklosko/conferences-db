import json
import pyodbc
import sys

class SQLRunner:
    @staticmethod
    def __readFile(filename, extension):
        directory = filename + "." + extension
        file = open(directory, "r", encoding='UTF-8')
        content = file.read()
        file.close()
        return content
        
    def __readFileLBL(filename, extension):
        directory = filename + "." + extension
        file = open(directory, "r", encoding='UTF-8')
        content = file.readlines()
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
        cursor = conn.cursor()
        
        batchSql = SQLRunner.__readFileLBL(batch, "sql");
        print("Executing the sql file")
        
        if show:
            for line in batchSql:
                query = line.rstrip('\n')
                if not query: continue
                print(query)
            
                cursor.execute(query)
                
            for row in cursor:
                print(row)
        
        else:
            for line in batchSql:
                query = line.rstrip('\n')
                if not query: continue
                print(query)
            
                cursor.execute(query)
                conn.commit()
            
        print("Done")
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