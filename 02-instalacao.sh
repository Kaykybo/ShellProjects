#!/bin/bash
#############################################################################
#Nome Script: Instação do vim
#Descrição: O script instala o  editor de textos vim
#Versão: 2.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

#!/bin/bash

# Verifica se o zenity está instalado
if ! command -v zenity &> /dev/null; then
  echo "O Zenity não está instalado. Por favor, instale-o primeiro."
  exit 1
fi

# Exibe o indicador de progresso com o zenity
(
  for i in {1..100}; do
    echo "$i"
    sleep 0.1
  done
) | zenity --progress --auto-close --title="Instalando"


# Armazena o ID do processo na variável "pid"
pid=$!

# Atualiza os repositórios
sudo apt update

# Exibe uma janela de progresso com o texto "Instalando o VIM..."
zenity --progress --text="Instalando o VIM..." --pulsate &

# Armazena o ID do processo na variável "pid"
pid=$!

# Instala o programa VIM
sudo apt install -y vim

# Mata o processo armazenado em "pid"
kill $pid

# Exibe uma janela de informação com o texto "Instalação Concluída"
zenity --info --text="Instalação Concluída"

