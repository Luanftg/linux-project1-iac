#! /bin/bash

echo "Atualizando servidor..."
sudo apt-get update
sudo apt-get upgrade -y
echo "Atualizado!"

echo "Instalando Apache2..."
sudo apt-get install apache2 -y
echo "Instalado Apache2!"

echo "Instalando Unzip..."
sudo apt-get install unzip -y
echo "Instalado Unzip!"

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
sudo wget https://github.com/Luanftg/test-web-build/releases/download/artifact-flutter-web/web.zip
unzip web.zip
cd web
cp -R * /var/www/html/
echo "Arquivos copiados!"
echo "Script Finalizado."