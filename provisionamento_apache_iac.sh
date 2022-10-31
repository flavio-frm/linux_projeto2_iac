#!/bin/bash

# Projeto 2 - Curso Linux DIO
# Supervisão do mestre Denilson Bonatti
# IAC (infraestrutura como codigo)

# script para subir um servidor apache


echo "Atualizando o Servidor..."
echo ""
echo "Baixando e instalando pacotes necessários ..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
echo "" 
echo "**** Atualização OK ****"
echo ""
echo "-------------------------------"
echo ""
echo "Baixando e provisionando arquivos da aplicação"
cd /tmp
# nesta proxima linha deve ser inserido o endereço do arquivo a ser baixado, lembrando que os arquivos devem estar zipados (arquivo.zip) 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
# neste proximo comando deve ser informado o endereço da pasta onde os aquivos foram descompactados e em seguida o endereço da pasta do servidor web, no nosso caso a pasta do servidor web esta no padrão do apache.
cp -R /tmp/linux-site-dio-main/* /var/www/html/
echo "" 
echo "**** Aplicação OK ****"
echo ""
echo "-------------------------------"
echo ""
echo "**** Script finalizado ****"
echo "" 
echo "-------------------------------"


