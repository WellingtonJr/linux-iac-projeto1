#!/bin/bash

echo "Iniciando a execucao do script iac_script.sh..."

echo "Criando diretorios /publico, /adm, /ven e /sec ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir  /sec

echo "Criando grupos GRP_ADM, GRP_VEN e GRP_SEC..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios e incluindo no grupo GRP_ADM... "

useradd carlos -c "Carlos Silva" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -5 wasd)
useradd maria -c "Maria Silva" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -5 wasd)
useradd joao -c "Joao Silva" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -5 wasd)

echo "Criando usuarios e incluindo no grupo GRP_VEN... "

useradd debora -c "Debora Silva" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -5 wasd)
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -5 wasd)
useradd roberto -c "Roberto Silva" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -5 wasd)

echo "Criando usuarios e incluindo no grupo GRP_SEC... "

useradd josefina -c "Josefina Silva" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -5 wasd)
useradd amanda -c "Amanda Silva" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -5 wasd)
useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -5 wasd)


echo "Modificando as permissoes das pastas criadas..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Alterando grupo de cada diretorio criado..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Finalizado!"
