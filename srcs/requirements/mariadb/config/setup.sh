#!/bin/bash

source /run/secrets/my-credentials

service mariadb start

sleep 5

mariadb-secure-installation <<-EOF
\n
n
Y
'$DB_PASSWORD_ROOT'
'$DB_PASSWORD_ROOT'
Y
Y
Y
Y
EOF

mariadb -v -u root <<-EOF
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO 'root'@'%' IDENTIFIED BY '$DB_PASSWORD_ROOT';
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_PASSWORD_ROOT');
EOF

sleep 5

mysqladmin -u root -p"$DB_PASSWORD_ROOT" shutdown

exec $@ 