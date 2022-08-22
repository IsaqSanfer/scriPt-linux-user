#!/bin/bash

echo "Atualizar o servidor:"

	apt-get update
	apt-get upgrade -y

	apt-get install apache2 -y

	apt-get install unzip -y


echo "Baixando e copiando aplicação:"

cd /tmp

apt-get install wget -y

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

	cd linux-site-dio

	cp -R * /var/www/html/