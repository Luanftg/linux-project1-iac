#! /bin/bash

echo "Atualizando servidor..."
apt-get update
apt-get upgrade -y
echo "Atualizado!"

echo "Instalando Apache2..."
apt-get install apache2 -y
echo "Instalado Apache2!"

echo "Instalando Unzip..."
apt-get install unzip -y
echo "Instalado Unzip!"

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/Luanftg/test-web-build/blob/main/build-web.zip
unzip build-web.zip
cd build-web
cp -R * /var/www/html/
echo "Arquivos copiados!"
echo "Script Finalizado."