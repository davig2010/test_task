#!/bin/bash

sudo mysql -uroot <<MYSQL_SCRIPT
CREATE DATABASE wordpress CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER 'wp-user'@'%' IDENTIFIED BY '$1';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp-user'@'%';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

echo "MySQL database created."
echo "Database:   WORDPRESS"
echo "Username:   wp-user "
echo "Password:   $1"
