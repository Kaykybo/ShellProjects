#!/bin/bash
#############################################################################
#Nome Script: Usuario 
#Descrição: O script mostra todos os usuarios do sistema
#Versão: 2.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

# Armazena a saída do comando "cat /etc/passwd | cut -d: -f1" em uma variável
usuarios=$(cat /etc/passwd | cut -d: -f1)

# Exibe uma caixa de diálogo de texto com a lista de usuários
zenity --text-info --title="Usuários do sistema" --width=400 --height=300 --filename=/etc/passwd --text="$usuarios"


