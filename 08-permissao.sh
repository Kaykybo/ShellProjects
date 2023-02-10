#!/bin/bash
#############################################################################
#Nome Script: chmod +X 
#Descrição: Concede permissão a todos os script.
#Versão: 2.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

zenity --question --text="Deseja dar permissão de execução a todos os arquivos .sh?" --ok-label="Sim" --cancel-label="Não"
# Usa o utilitário Zenity para exibir uma pergunta ao usuário. A pergunta é "Deseja dar permissão de execução a todos os arquivos .sh?"
# As opções de resposta são "Sim" e "Não", respectivamente.

if [ $? -eq 0 ]; then
  # Verifica se a resposta do usuário foi "Sim".
  # $? é a saída do último comando executado, neste caso, o Zenity.
  # Se a saída for 0, significa que a resposta foi "Sim".

chmod +x *.sh
  # Concede permissão de execução para todos os arquivos com a extensão .sh na pasta atual.

zenity --info --text="Permissão de execução concedida com sucesso!"
  # Exibe uma mensagem de informação ao usuário usando o Zenity, informando que a permissão foi concedida com sucesso.
else
  # Se a resposta do usuário não foi "Sim".

zenity --info --text="Operação cancelada."
  # Exibe uma mensagem de informação ao usuário usando o Zenity, informando que a operação foi cancelada.
fi
# Fim da estrutura de controle de fluxo "if".

