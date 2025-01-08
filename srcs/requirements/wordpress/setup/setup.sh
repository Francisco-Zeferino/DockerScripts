#!bin/sh

cd "$WP_PATH"

wp core download --allow-root 

wp core install --allow-root --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_USER --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL

exec $@