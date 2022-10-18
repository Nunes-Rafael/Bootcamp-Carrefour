#!/bin/bash
echo "Instalando atualizações e serviços"
apt-get update
apt-get upgrade
apt install apache2 -y
apt install unzip -y
echo "Atulizações instaladas!!!"

echo "Baixando a copiando a aplicação para diretório do apache."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "Baixado e copiado para diretório do apache"