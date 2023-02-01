#############################################################################
#Nome Script: Sobrenome 
#Descrição: O script mostra o nome e sobrenome do usuário no dialog.
#Versão: 0.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################
#!/bin/bash

nome=$(dialog --inputbox "Qual é o seu nome?" 10 60 3>&1 1>&2 2>&3)
sobrenome=$(dialog --inputbox "Qual é o seu sobrenome?" 10 60 3>&1 1>&2 2>&3)

dialog --msgbox "Muito prazer em conhecê-lo, $nome $sobrenome!" 10 60

