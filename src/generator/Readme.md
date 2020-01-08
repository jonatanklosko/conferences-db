# Data generator

The generator is meant to be filling the database with random stuff to pretend that it has been in use for about 3 years.

Work in progress. Not done yet.

Components:

- sqlrunner.py
    - Devtool to run sql files on the local MS SQL Server from the command-line interface.
    - Technicalities (server and database) are specified in 'parameters.txt' file and should be changed before running the script.
    - Typing "python sqlrunner.py" will by default run 'baza.sql' file located in the same directory as the script.
- generator.py
    - Script preparing sql file filled with inserts to fill database with desired data.
    - Scripts outputs the result sql code to the 'baza.sql' file located in the same directory as the script.
    - NOT DONE YET
