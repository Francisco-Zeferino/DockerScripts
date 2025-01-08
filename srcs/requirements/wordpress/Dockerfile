FROM debian:bullseye

EXPOSE 9000

COPY ./setup/setup.sh /home/

RUN apt update && apt upgrade \
    && chmod 777 /home/setup.sh \
    && mkdir /run/php

RUN apt install php php-fpm php-mysql curl unzip -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/ffilipe-.42.fr

COPY ./config/wp-config.php ./

RUN chown -R www-data:www-data /var/www/html/

WORKDIR /etc/php/7.4/fpm/pool.d/

COPY ./config/www.conf www.conf

ENTRYPOINT ["/home/setup.sh"]

CMD ["php-fpm7.4", "-F"]