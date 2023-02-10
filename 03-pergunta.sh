#!/bin/bash
#############################################################################
#Nome Script: Pergunta 
#Descrição: O script faz uma pergunta.
#Versão: 2.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

# A linha abaixo exibe uma caixa de diálogo para inserir o nome
nome=$(zenity --entry --title="Nome" --text="Digite o seu nome:")

# A linha abaixo exibe uma caixa de diálogo de mensagem com o nome inserido
zenity --info --title="Olá" --text="Olá, $nome!"

