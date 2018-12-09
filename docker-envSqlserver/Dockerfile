FROM microsoft/mssql-server-linux:2017-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=DSI@1234

RUN mkdir -p /var/opt/mssql/bkp \
        && mkdir -p /var/opt/mssql/mdf \
        && mkdir -p /var/opt/mssql/ldf \
        && mkdir -p /var/opt/mssql/script

WORKDIR /var/opt/mssql

COPY ["./bkp/AdventureWorksDW2017.bak","/var/opt/mssql/bkp/AdventureWorksDW2017.bak"]
COPY ["./sql/restore.sql","/var/opt/mssql/script/restore.sql"]

RUN     /opt/mssql/bin/sqlservr --accept-eula & sleep 20 \
       && /opt/mssql-tools/bin/sqlcmd \
               -S localhost \
               -U SA \
               -d master \
               -P DSI@1234 \
               -i /var/opt/mssql/script/restore.sql
        #&& pkill sqlservr

RUN rm --force -rf bkp/AdventureWorksDW2017.bak \
        && rm -rf script/restore.sql