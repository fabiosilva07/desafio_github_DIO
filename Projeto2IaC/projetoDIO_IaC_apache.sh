#!/bin/bash

#Script de Provisionamento Servidor Web Apache

echo "Atualizado o Servidor"
apt-get update -y
apt-get upgrade -y

echo "Instalando Aplicacoes Necessarias"
apt-get install apache2 unzip -y

echo "Baixando a Aplicacao"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Finalizado!"
