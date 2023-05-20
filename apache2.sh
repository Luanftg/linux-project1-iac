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
wget <LINK DO REPOSITORIO GIT DO PROJETO>
unzip <ARQUIVO.zip>
cd <NOME DO DIRETORIO>
cp -R * /var/www/html/
echo "Arquivos copiados!"
echo "Script Finalizado."