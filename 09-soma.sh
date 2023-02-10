#!/bin/bash
#############################################################################
#Nome Script: Soma
#Descrição: o Script faz operações matematica.
#Versão: 2.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################
#!/bin/bash
# Define que este script será interpretado pelo shell bash

result=$(zenity --forms --title="Calculadora" --text="Insira as informações abaixo:" \
  --add-entry="Primeiro número" \
  --add-entry="Segundo número" \
  --add-combo="Operação" --combo-values="Adição|Subtração|Multiplicação|Divisão")
# Exibe um formulário Zenity para o usuário inserir os dados da operação matemática.
# O formulário contém dois campos de entrada para os números e uma caixa de seleção para a operação matemática.
# A variável "result" armazena o resultado da entrada do usuário.

IFS="|" read -r num1 num2 operation <<< "$result"
# Divide a string armazenada em "result" em três variáveis: "num1", "num2" e "operation".
# IFS (Internal Field Separator) é definido como "|" para que a string seja dividida corretamente.

case "$operation" in
  "Adição")
    result=$(($num1 + $num2))
    ;;
  "Subtração")
    result=$(($num1 - $num2))
    ;;
  "Multiplicação")
    result=$(($num1 * $num2))
    ;;
  "Divisão")
    result=$(($num1 / $num2))
    ;;
esac
# Usa a estrutura de controle de fluxo "case" para realizar a operação matemática escolhida pelo usuário.
# O resultado da operação é armazenado na variável "result".

zenity --info --title="Resultado" --text="Resultado: $result"
# Exibe o resultado da operação usando o Zenity.
