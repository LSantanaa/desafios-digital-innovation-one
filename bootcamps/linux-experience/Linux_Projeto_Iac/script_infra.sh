
#!/bin/bash
##################################################################
#### SCRIPT DE ESTRUTURA DE USUÁRIOS, DIRETÓRIOS E PERMISSÕES ####
##################################################################
######## CRIADO DURANTE BOOTCAMP LINUX EXPERIENCE DA DIO  ########
##################################################################
clear
cd /
######################################################
echo "Iniciando processo de criação de estrutura..."
sleep 1
echo "Criando Diretórios..."
sleep 2

mkdir Publico
mkdir Adm  
mkdir Ven
mkdir Sec

echo "Diretórios Criados: Publico, Adm, Ven e Sec"
sleep 1
#####################################################
echo "Iniciando criação de grupos de usuários"
sleep 1

groupadd GRP_VEN
groupadd GRP_ADM
groupadd GRP_SEC

echo "Grupos criados com sucesso: GRP_VEN, GRP_ADM, GRP_SEC"
#####################################################

echo "Iniciando criação de usuários..."
echo "Adicionando aos grupos"
sleep 2

useradd carlos -m -c "Carlos Silva" -p$(openssl passwd senha123) -s /bin/bash -G GRP_ADM
passwd -e carlos
useradd joao -m -c "Joao Silva" -p$(openssl passwd senha123) -s /bin/bash -G GRP_ADM
passwd -e joao
useradd maria -m -c "Maria Isabel" -p$(openssl passwd senha123) -s /bin/bash -G GRP_ADM
passwd -e maria
useradd debora -m -c "Debora Silva" -p$(openssl passwd senha123) -s /bin/bash -G GRP_VEN
passwd -e debora
useradd sebast -m -c "Sebastiana Conceição" -p$(openssl passwd senha123) -s /bin/bash -G GRP_VEN
passwd -e sebast
useradd roberto -m -c "Roberto Marcondes" -p$(openssl passwd senha123) -s /bin/bash -G GRP_VEN
passwd -e roberto
useradd josefina -m -c "Josefina Andrade" -p$(openssl passwd senha123) -s /bin/bash -G GRP_SEC
passwd -e josefina
useradd amanda -m -c "Amanda Silva" -p$(openssl passwd senha123) -s /bin/bash -G GRP_SEC
passwd -e amanda
useradd rogerio -m -c "Rogerio Santos" -p$(openssl passwd senha123) -s /bin/bash -G GRP_SEC
passwd -e rogerio

echo "Usuários criados com sucesso"
sleep 1
#################################################### 
echo "Atribuindo permisões"
sleep 1
chmod 777 Publico
chmod 770 Adm 
chmod 770 Ven
chmod 770 Sec

chown root:GRP_ADM /Adm/
chown root:GRP_VEN /Ven/
chown root:GRP_SEC /Sec/

#####################################################
clear
echo "Finalizando script"
sleep 1
echo "Infraestrutura finalizada com sucesso."
sleep 1


### Criado por Leonardo de Sant'Ana 02/08/2022 ###
