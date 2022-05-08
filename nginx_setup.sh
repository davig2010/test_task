#!/bin/bash

sudo cp   /home/operator33/www/wordpress.conf   /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/wordpress.conf
sudo nginx -t && sudo nginx -s reload
sudo systemctl status nginx
