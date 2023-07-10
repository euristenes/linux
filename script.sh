#!/bin/bash

echo "Criar as pastas"
mkdir /publico /adm /ven /sec

echo "Criar os grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criar os usuários e adicioná-los aos grupos"
useradd -m -G GRP_ADM carlos /bin/bash -p $(openssl passwd -crypt senha123)
useradd -m -G GRP_ADM maria /bin/bash -p $(openssl passwd -crypt senha123)
useradd -m -G GRP_ADM joao /bin/bash -p $(openssl passwd -crypt senha123)
useradd -m -G GRP_VEN debora /bin/bash -p $(openssl passwd -crypt senha123)
useradd -m -G GRP_VEN sabastiana /bin/bash -p $(openssl passwd -crypt senha123)
useradd -m -G GRP_VEN roberto /bin/bash -p $(openssl passwd -crypt senha123)
useradd -m -G GRP_SEC josefina /bin/bash -p $(openssl passwd -crypt senha123)
useradd -m -G GRP_SEC amanda /bin/bash -p $(openssl passwd -crypt senha123)
useradd -m -G GRP_SEC rogerio /bin/bash -p $(openssl passwd -crypt senha123)

echo "Definir as permissões das pastas"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm /ven /sec
chmod 777 /publico

echo "Fim do script"