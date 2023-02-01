#############################################################################
#Nome Script: Nome 
#Descrição: O script mostra o nome do usuário no dialog.
#Versão: 0.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################
#!/bin/bash
#!/bin/bash

nome=$(dialog --inputbox "Qual é o seu nome?" 10 60 3>&1 1>&2 2>&3)

dialog --title "Resultado" --msgbox "Olá, $nome!" 10 60

