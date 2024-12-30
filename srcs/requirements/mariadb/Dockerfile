FROM debian:bullseye

EXPOSE 3306

RUN apt update
RUN apt install mariadb-server -y

CMD [ "mysqld_safe" ]