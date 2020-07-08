FROM postgres
ENV POSTGRES_PASSWORD postgres 
ENV POSTGRES_DB testdb 
ADD init.sql /docker-entrypoint-initdb.d/
