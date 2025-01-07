FROM debian:bullseye

#WORKDIR /var/lib/mysql

EXPOSE 3306

RUN apt update
RUN apt install mariadb-server -y

COPY ./config/setup.sh /bin

RUN chmod +x /bin/setup.sh 

#CMD ["tail", "-f", "/dev/null"]

ENTRYPOINT ["./bin/setup.sh"]

CMD ["mysqld_safe", "--bind-address=0.0.0.0"]