FROM debian:bullseye

EXPOSE 9000

RUN mkdir /run/php

WORKDIR /var/www/html/ffilipe-.42.fr

RUN chown -R www-data:www-data /var/www/html/

RUN apt update && apt upgrade

RUN apt install php php-fpm php-mysql wget unzip -y


RUN wget https://wordpress.org/latest.zip && unzip latest.zip

RUN rm latest.zip

COPY ./config/wp-config.php ./wordpress/

WORKDIR /etc/php/7.4/fpm/pool.d/

COPY ./config/www.conf www.conf

#CMD ["tail", "-f", "/dev/null"]

CMD ["php-fpm7.4", "-F"]