#!/bin/bash

# Neste projeto iremos criar um script onde toda a infraestrutura de usuários, 
# grupos de usuários, diretórios e permissões serão criadas automaticamente. 
# Será realizado o upload do arquivo de script no GitHub para futuras reutilizações
# do script. Sendo assim, toda nova máquina virtual que for iniciada já 
# estará pronta para uso quando o script for executado.

echo "Diretórios-------"

    mkdir /public
    mkdir /adm #admins
    mkdir /gst #convidados
    mkdir /col #colaboradores

echo "Grupos----------"

    groupadd GROUP-ADM
    groupadd GROUP-GST
    groupadd GROUP-COL

echo "Permissões------"

    chown root:GROUP-ADM /adm
    chown root:GROUP-GST /gst
    chown root:GROUP-COL /col

    chmod 770 /adm
    chmod 755 /gst
    chmod 770 /col
    chmod 777 /public


echo "Usuários--------"

echo "-----Final da operação."