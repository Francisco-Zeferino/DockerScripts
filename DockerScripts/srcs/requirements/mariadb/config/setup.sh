#!/bin/bash

source /run/secrets/my-credentials

service mariadb start;

mariadb -v -u root << EOF
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO 'root'@'%' IDENTIFIED BY '$DB_PASSWORD_ROOT';
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_PASSWORD_ROOT');
EOF

sleep 5

service mariadb stop

exec $@ 