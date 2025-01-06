FROM debian:bullseye

WORKDIR /var/www/html/ffilipe-.42.fr

RUN apt update && apt upgrade

RUN apt install php-fpm php-mysql wget unzip -y

RUN wget https://wordpress.org/latest.zip && unzip latest.zip

CMD ["tail", "-f", "/dev/null"]