#!/bin/bash

echo   "criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios..."

useradd carlos 	--home /home/carlos -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria  --home /home/maria -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao  --home /home/joao -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora  --home /home/debora -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana  --home /home/sebastiana -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto  --home /home/roberto -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina  --home /home/josefina -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda  --home /home/amanda -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio  --home /home/rogerio -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "especicando permissoes"

chown root:GRP_ADM/adm
chown root:GRP_VEN/ven
chown root:GRP_SEC/sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."



