#!/bin/bash

# Pfad zur .bacpac Datei
BACPAC_FILE="/data/backup.bacpac"

# Warte bis die .bacpac Datei existiert und eine minimale Größe erreicht hat
while [[ ! -s "$BACPAC_FILE" || $(stat -c%s "$BACPAC_FILE") -lt 1000 ]]; do
  echo "Warten auf die vollständige .bacpac Datei..."
  sleep 10
done

echo ".bacpac Datei ist bereit für den Import."

# Importiere die .bacpac-Datei in SQL Server
# Stelle sicher, dass die Umgebungsvariable SA_PASSWORD gesetzt ist.

sqlpackage \
    /a:Import \
    /tsn:localhost \
    /tdn:MyDatabase \
    /tu:SA \
    /tp:$SA_PASSWORD \
    /sf:/data/backup.bacpac

echo "importing successful"
