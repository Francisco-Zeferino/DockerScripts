#!/bin/sh

sleep 10

cd "$WP_PATH"

wp core download --allow-root 

wp core install --allow-root --url=$WP_URL \
    --title=$WP_TITLE \
    --admin_user=$WP_USER \
    --admin_password=$WP_PASSWORD \
    --admin_email=$WP_EMAIL

wp user create --allow-root \
    $WP_SECOND_USER $WP_SECOND_EMAIL \
    --user_pass=$WP_SECOND_USER_PASSWORD

wp theme activate twentytwentyfive --allow-root

exec $@