#!/bin/bash
#############################################################################
#Nome Script: Atualizar 
#Descrição: Atualiza o sistema 
#Versão: 2.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

# Exibe uma janela de progresso com o texto "Atualizando Repositórios..."
zenity --progress --text="Atualizando Repositórios..." --pulsate &

# Armazena o ID do processo na variável "pid"
pid=$!

# Atualiza os repositórios
sudo apt update

# Mata o processo armazenado em "pid"
kill $pid

# Exibe uma janela de progresso com o texto "Atualizando Programas..."
zenity --progress --text="Atualizando Programas..." --pulsate &

# Armazena o ID do processo na variável "pid"
pid=$!

# Atualiza os programas
sudo apt -y upgrade

# Mata o processo armazenado em "pid"
kill $pid

# Exibe uma janela de informação com o texto "Atualização Concluída"
zenity --info --text="Atualização Concluída"

