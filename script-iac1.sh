#!/bin/bash

echo "Criando diretórios"

mkdir /sec
mkdir /ven
mkdir /adm
mkdir /publico

echo "Diretórios criados!"

echo "Criando grupos"

groupadd GRP_VEN
groupadd GRP_ADM
groupadd GRP_SEC

echo "Grupos Criados!"

echo "Criando usuários..."

useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)
useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)
useradd joao -c "João" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)

useradd debora -c "Debora" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)
useradd roberto -c "Roberto" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)

useradd josefina -c "Josefina" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)
useradd amanda -c "Amanda" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)
useradd rogerio -c "Rogerio" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)

echo "Usuários criados!"

echo "Alterando permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 740 /adm
chmod 740 /ven
chmod 740 /sec
chmod 777 /publico

echo "Permissões alteradas"
