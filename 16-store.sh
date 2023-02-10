#!/bin/bash
#############################################################################
#Nome Script: Store
#Descrição: O script abre uma caixa para mostrar o programa que deseja instalar.
#Versão: 1.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

# Lista de aplicativos disponíveis
apps="vim
vlc
google-chrome"

# Exibe a lista de aplicativos em uma janela de diálogo com o Zenity
selected_app=$(echo "$apps" | zenity --list --title "Aplicativos disponíveis" --text "Selecione um aplicativo:" --column "Nome do aplicativo" --width=500 --height=400)

# Verifica se o usuário selecionou algum aplicativo
if [ -n "$selected_app" ]; then
  # Instala o aplicativo selecionado
  sudo apt-get install "$selected_app"

  # Exibe uma mensagem de sucesso
  zenity --info --title "Sucesso" --text "O aplicativo $selected_app foi instalado com sucesso."
else
  # Exibe uma mensagem de erro caso nenhum aplicativo tenha sido selecionado
  zenity --error --title "Erro" --text "Nenhum aplicativo selecionado."
fi


