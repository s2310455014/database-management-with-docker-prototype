FROM mcr.microsoft.com/mssql/server:2019-latest

# Umgebungsvariablen für SQL Server
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=dsastm420LG17

USER root

RUN apt-get update \
    && apt-get install -y curl unzip \
    && curl -L "https://aka.ms/sqlpackage-linux" -o sqlpackage.zip \
    && unzip sqlpackage.zip -d /opt/sqlpackage \
    && chmod +x /opt/sqlpackage/sqlpackage \
    && ln -s /opt/sqlpackage/sqlpackage /usr/local/bin/sqlpackage

WORKDIR /data

COPY /data/import-bacpac.sh /data/import-bacpac.sh
COPY /data/create-bak.sh /data/create-bak.sh
RUN chmod +x /data/import-bacpac.sh /data/create-bak.sh

CMD ["/bin/bash", "-c", "/data/import-bacpac.sh && /data/create-bak.sh"]
