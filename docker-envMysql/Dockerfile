FROM mysql

RUN mkdir -p /var/opt/mysql/scripts

COPY ["./sql/mysqlsampledatabase.sql","/var/opt/mysql/scripts/mysqlsampledatabase.sql"]

# Add a database
ENV MYSQL_DATABASE guitou

#CMD service mysql start && tail -F /var/log/mysql/error.log

#&& /bin/bash