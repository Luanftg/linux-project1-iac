#!/bin/bash

sudo mkdir /public
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando grupos de usuários..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando usuários..."

sudo useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
sudo useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
sudo useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

sudo useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
sudo useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
sudo useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

sudo useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
sudo useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
sudo useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Adiciona usuários aos grupoEspecificando permissões dos diretórioss..."

sudo chown luanftg:GRP_ADM /adm
sudo chown luanftg:GRP_VEN /ven
sudo chown luanftg:GRP_VEN /sec

# especifica  permissões em cada diretório (dono-usuario-outros) 7=total 
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec
sudo chmod 777 /public

echo "Finalizado."
