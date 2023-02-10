#!/bin/bash
#############################################################################
#Nome Script: Login e senha
#Descrição: Permite que o user coloque o login e senha
#Versão: 2.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

usuario_correto="admin"
senha_correta="secreta"
# Define o nome de usuário e a senha corretos

usuario=$(zenity --entry --title="Login" --text="Digite seu nome de usuário:")
# Exibe uma caixa de diálogo para que o usuário insira seu nome de usuário
# A variável "usuario" armazena a entrada do usuário

senha=$(zenity --password --title="Login" --text="Digite sua senha:")
# Exibe uma caixa de diálogo para que o usuário insira sua senha
# A variável "senha" armazena a entrada do usuário

if [ "$usuario" == "$usuario_correto" ] && [ "$senha" == "$senha_correta" ]; then
  zenity --info --title="Resultado" --text="Login realizado com sucesso!"
  # Se o nome de usuário e a senha estiverem corretos, exibe uma mensagem de sucesso usando o Zenity
else
  zenity --error --title="Resultado" --text="Usuário ou senha inválidos. Tente novamente."
  # Caso contrário, exibe uma mensagem de erro usando o Zenity
fi


