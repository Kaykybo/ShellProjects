#!/bin/bash
#############################################################################
#Nome Script: Nome 
#Descrição: O script mostra o nome do usuário no zenity.
#Versão: 2.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

# Faz a pergunta "Qual é o seu nome?" e exibe uma caixa de entrada para o usuário digitar
nome=$(zenity --entry --title="Qual é o seu nome?" --text="Qual é o seu nome?")

# Exibe uma caixa de mensagem com o texto "Olá, $nome!"
zenity --info --title="Resultado" --text="Olá, $nome!"


