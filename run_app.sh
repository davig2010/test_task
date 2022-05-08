#!/bin/bash
sudo mkdir -p /var/wordpress/uploads && sudo chmod -R 775 /var/wordpress/uploads/
sudo chown -R www-data:www-data /var/wordpress/uploads/
echo "========INSTALL==DOCKER-COMPOSE======="
sudo apt-get install -y docker-compose 
cd /home/operator33/www/
#=====WRITE=IP=IN=DOCKER=FILE====
ipadd=` ip a s eth0 | awk '/inet.*brd/ {print $2}' | awk -F'/' '{print $1}'`
sed -i "s/server_ip/${ipadd}/" docker-compose.yml
#=====RUN=COMPOSE=FILE===
sudo docker-compose up -d
sudo systemctl  restart mysql
sudo systemctl  restart nginx

