#!/bin/bash
#############################################################################
#Nome Script: Backup 
#Descrição: O script faz backup da pasta script compactada com data.
#Versão: 0.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################

# Exibe uma janela de progresso com o texto "Fazendo Backup..." e uma barra de progresso que pisca
zenity --progress --text="Fazendo Backup..." --pulsate &

# Armazena o ID do processo na variável "pid"
pid=$pid

# Pausa o script por 5 segundos
sleep 3

# Mata o processo armazenado em "pid"
kill $pid

# Copia todos os arquivos do diretório "/home/ubuntu/SCRIPTS/" para o diretório "/home/ubuntu/BKP" com permissões de superusuário
sudo cp /home/ubuntu/SCRIPTS/* /home/ubuntu/BKP

# Volta para o diretório home
cd 

# Cria um arquivo tar.gz compactado com o conteúdo da pasta "BKP"
sudo tar -czf BKP.tar.gz BKP

# Remove todos os arquivos ".sh" da pasta "/home/ubuntu/BKP" com permissões de superusuário
sudo rm /home/ubuntu/BKP/*.sh

# Armazena a data atual no formato "AAAA-MM-DD" na variável "data_atual"
data_atual=$(date +"%Y-%m-%d")

# Armazena o nome antigo do arquivo tar.gz na variável "nome_antigo"
nome_antigo=BKP.tar.gz

# Concatena a data atual com o nome antigo para criar o novo nome do arquivo tar.gz e armazena na variável "nome_novo"
nome_novo="$data_atual-$nome_antigo"

# Move o arquivo tar.gz com o nome antigo para o novo nome
sudo mv $nome_antigo $nome_novo

# Move todos os arquivos tar.gz para a pasta "BKP"
sudo mv *.tar.gz BKP

# Mata novamente o processo armazenado em "pid"
kill $pid

# Exibe uma janela de informação com o texto "O Backup Terminou."
zenity --info --text="O Backup Terminou."


