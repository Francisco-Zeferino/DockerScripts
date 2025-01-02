FROM debian:bullseye

EXPOSE 3306

RUN apt update
RUN apt install mariadb-server -y

COPY ./config/setup.sh /bin

RUN chmod +x /bin/setup.sh 

CMD ["./bin/setup.sh", "mysqld_safe" ]