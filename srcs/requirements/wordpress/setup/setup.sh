#!/bin/sh

sleep 10

cd "$WP_PATH"

if [ -d "/var/www/html/ffilipe-.42.fr/wp-admin" ]
then
    echo "Wordpress already installed, waiting for mariadb to start..."
    sleep 10
else
    wp core download --allow-root 

    wp core install --allow-root --url=$WP_URL \
        --title=$WP_TITLE \
        --admin_user=$WP_USER \
        --admin_password=$WP_PASSWORD \
        --admin_email=$WP_EMAIL

    wp user create --allow-root \
        $WP_SECOND_USER $WP_SECOND_EMAIL \
        --user_pass=$WP_SECOND_USER_PASSWORD

fi
echo "Wordpress is online!"
exec $@