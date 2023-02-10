#!/bin/bash

# Verifica se o zenity está instalado
if ! command -v zenity &> /dev/null; then
  echo "O Zenity não está instalado. Por favor, instale-o primeiro."
  exit 1
fi

# Exibe uma caixa de pesquisa com o zenity
pacote=$(zenity --entry --text "Digite o nome do pacote que você deseja baixar" --title "Pesquisa de pacote")

# Verifica o resultado da pesquisa
if [ -z "$pacote" ]; then
  echo "Nenhum pacote digitado"
  exit 1
fi

# Procura o pacote digitado
if ! dpkg -s "$pacote" &> /dev/null; then
  if zenity --question --text="O pacote $pacote não está instalado. Deseja baixá-lo?"; then
    sudo apt-get install "$pacote"
  fi
fi

