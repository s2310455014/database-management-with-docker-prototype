FROM mcr.microsoft.com/azure-cli

# Installiere azcopy
RUN wget https://aka.ms/downloadazcopy-v10-linux -O azcopy.tar.gz \
    && tar -xf azcopy.tar.gz --strip-components=1 \
    && mv azcopy /usr/bin/ \
    && rm azcopy.tar.gz

WORKDIR /app

# Kopiere Download-Skript
COPY download-backup.sh /app/download-backup.sh

# Mache das Skript ausführbar
RUN chmod +x /app/download-backup.sh

# Führe das Download-Skript beim Start aus
CMD ["/bin/bash", "/app/download-backup.sh"]