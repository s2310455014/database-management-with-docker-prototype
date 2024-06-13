#!/bin/bash

# Erstelle ein Backup der SQL Server-Datenbank
# Stelle sicher, dass die Umgebungsvariable SA_PASSWORD gesetzt ist.

/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -Q "BACKUP DATABASE [MyDatabase] TO DISK = N'/data/mydatabase.bak' WITH NOFORMAT, NOINIT, SKIP, NOREWIND, NOUNLOAD, STATS = 10"
