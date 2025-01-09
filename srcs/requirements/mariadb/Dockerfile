FROM debian:bullseye

EXPOSE 3306

RUN apt update
RUN apt install mariadb-server -y

COPY ./config/setup.sh /bin

RUN chmod +x /bin/setup.sh 

ENTRYPOINT ["./bin/setup.sh"]

CMD ["mysqld_safe", "--bind-address=0.0.0.0"]