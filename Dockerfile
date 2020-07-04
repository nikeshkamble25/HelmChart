FROM ubuntu
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install postgresql -y tzdata
ENV POSTGRES_USER=postgresql
ENV POSTGRES_PASSWORD=postgresql
RUN chown -R postgres:postgres /var/lib/postgresql
RUN chmod -R u=rwX,go= /var/lib/postgresql
EXPOSE 5432
ENTRYPOINT service postgresql start
CMD [ "postgres" ]
#"-U postgresql","--host","0.0.0.0","-p","5432"]