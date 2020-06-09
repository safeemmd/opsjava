FROM mysql:5.7

ARG MYSQL_DATABASE
ENV MYSQL_DATABASE $MYSQL_DATABASE

COPY ./tables.sql /docker-entrypoint-initdb.d/

