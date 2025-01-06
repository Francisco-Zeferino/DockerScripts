FROM debian:bullseye

#WORKDIR /var/lib/mysql

EXPOSE 3306

RUN apt update
RUN apt install mariadb-server -y

COPY ./config/setup.sh /bin

RUN chmod +x /bin/setup.sh 

#CMD ["tail", "-f", "/dev/null"]

CMD ["./bin/setup.sh", "mysqld_safe" ]