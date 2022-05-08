#!/bin/bash
echo "=============APT=UPDATE==="
sudo apt update
echo "========INSTALL==NGINX==MARIADB====="
sudo apt install -y  nginx mariadb-server
echo "============end ==istall============="
sudo apt update
echo "------------install-for-docker-----------------------"
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
echo "===================GPG=================================="
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg  --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "============ECHO====================================="
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee  /etc/apt/sources.list.d/docker.list > /dev/null
echo "+++++++++++++++++++++aptget++++++++++++++++++++++"
sudo apt-get update
echo "+==================install docker================================"
 sudo apt-get install -y  docker-ce docker-ce-cli containerd.io docker-compose-plugin
echo "-----------Change-config-MYSQ--0-0-0-0--------"
sudo sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
sudo systemctl restart mysql
echo "++++++++++++hear+++TCP++PORTS++++++++++++++++++++++"
ss -tlp
