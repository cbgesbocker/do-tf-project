#!/bin/bash

sudo apt-get update
sudo apt-get -y install nginx

export HOSTNAME=$(curl -s  http://167.99.125.99/metadata/v1/hostname)
export PUBLIC_IPV4=$(curl -s http://167.99.125.99/metadata/v1/interfaces/public/0/ipv4/address)

echo Hello from Droplet $HOSTNAME, with IP address $PUBLIC_IPV4 > /var/www/html/index.nginx-debian.html

