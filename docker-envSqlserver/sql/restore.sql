RESTORE DATABASE AdventureWorksDW2017 FROM DISK = '/var/opt/mssql/bkp/AdventureWorksDW2017.bak'
WITH 
    MOVE 'AdventureWorksDW2017' TO '/var/opt/mssql/ldf/AdventureWorksDW2017 '
,MOVE 'AdventureWorksDW2017_log' TO '/var/opt/mssql/mdf/AdventureWorksDW2017_log'
,REPLACE;