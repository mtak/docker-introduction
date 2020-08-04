FROM mysql/mysql-server:8.0

ENV MYSQL_ROOT_PASSWORD mysqlrootpw

COPY src/mydatabase_init.sql /docker-entrypoint-initdb.d/mydatabase_init.sql
