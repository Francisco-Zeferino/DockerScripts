FROM debian:bullseye

EXPOSE 9000

RUN mkdir /run/php

WORKDIR /var/www/html/ffilipe-.42.fr

RUN apt update && apt upgrade

RUN apt install php php-fpm php-mysql wget unzip -y

RUN wget https://wordpress.org/latest.zip && unzip latest.zip

RUN rm latest.zip

COPY ./config/wp-config.php ./wordpress/

#CMD ["tail", "-f", "/dev/null"]

CMD ["php-fpm7.4", "-F"]