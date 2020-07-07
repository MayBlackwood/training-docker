FROM postgres 
ENV POSTGRES_PASSWORD qwerty 
ENV POSTGRES_DB trdocker 
COPY init.sql /docker-entrypoint-initdb.d/
