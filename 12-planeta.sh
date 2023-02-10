#!/bin/bash
############################################################################
#Nome Script: Planeta 
#Descrição: O script deixa escolher uma lista de planetas e mostra um resultado
#Versão: 0.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

#!/bin/bash

# Exibe uma caixa de diálogo de menu para selecionar um planeta
planeta=$(zenity --list --title "Em qual planeta você mora?" --text "Selecione um planeta:" --column "Planeta" \
  Terra \
  Marte \
  Plutão \
  Nenhum \
  --width=200 --height=200)

# Verifica a seleção do usuário e exibe uma caixa de diálogo de mensagem apropriada
if [ "$planeta" == "Terra" ]; then
  zenity --info --title "Terraqueo" --text "Você é um terraqueo."
elif [ "$planeta" == "Marte" ]; then
  zenity --info --title "Marciano" --text "Você é um marciano."
elif [ "$planeta" == "Plutão" ]; then
  zenity --info --title "Plutoniano" --text "Você é um plutoniano."
elif [ "$planeta" == "Nenhum" ]; then
  zenity --warning --title "Lixo do Universo" --text "Você é um lixo do universo."
else
  zenity --error --title "Planeta Desconhecido" --text "Não conheço esse planeta."
fi



