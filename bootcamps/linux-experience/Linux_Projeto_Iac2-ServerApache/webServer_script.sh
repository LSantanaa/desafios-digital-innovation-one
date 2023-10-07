#!/bin/bash
##############################################################################
########### Script para provisionamento de servidor web com Apache ###########
##############################################################################
##############################################################################
####### Desenvolvido por Leonardo de Sant'Ana durante desafio proposto #######
############# no bootcamp Linux Experience da DIO, em 03/08/2022 #############
##############################################################################

clear
cd /

echo "Iniciando provisionamento..."
echo "Atualizando Sistema..."
sleep 2

apt-get update -y
apt-get upgrade -y

clear
echo "Sistema atualizado com sucesso."
sleep 1
clear
##############################################################################
echo "Obtendo Apache..."
sleep 1
apt-get install apache2 -y
clear
echo "Apache instalado com sucesso..."
echo "Instalando unzip..."
apt-get install  unzip -y
echo "Instalado com sucesso."
clear
###############################################################################
echo "Baixando site para implementação..."
echo "Acessando repositório e iniciando download"
sleep 1
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
clear
echo "Descompactando arquivos"
sleep 1
unzip main.zip
clear
echo "Copiando site para o Apache"
cd /tmp/linux-site-dio-main/
cp -R * /var/www/html/
echo "Copiado.."
sleep 1
echo "Finalizando Provisionamento"
echo "Finalizado... :)"
sleep 1
