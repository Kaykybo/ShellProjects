#!/bin/bash
##########################################################################
#Nome Script: Monitor. 
#Descrição: Monitora se o script saci.txt está sendo criado, e se for ele é apagado.
#Versão: 0.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

#Aparece uma barra de progresso do zenity  com monitorando.
zenity --progress --pulsate --width=600 --height=100 --text="Monitorando" &
pid=$!
#Looping do Script.
while true
do
#Condicional
  if [ -f "saci.txt" ]; then
    echo "Alguém criou o arquivo saci.txt"
    sudo  rm "saci.txt"
    echo "Arquivo saci.txt apagado"
    kill $pid
    zenity --width=600 --height=250 --info --text="Arquivo saci.txt apagado"
#Recomeço do looping.
zenity --progress --pulsate --width=600 --height=100 --text="Monitorando" &
pid=$!
  fi
#Tempo de looping. 
  sleep 1
done






