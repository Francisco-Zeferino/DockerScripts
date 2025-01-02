FROM debian:bullseye

WORKDIR /home/ffilipe-/data/wordpress

RUN apt update && apt upgrade

RUN apt install php-fpm php-mysql wget unzip -y

RUN wget https://wordpress.org/latest.zip && unzip latest.zip

CMD ["tail", "-f", "/dev/null"]