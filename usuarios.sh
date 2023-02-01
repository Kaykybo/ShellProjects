#############################################################################
#Nome Script: Usuario 
#Descrição: O script mostra todos os usuarios do sistema
#Versão: 0.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################
#!/bin/bash
echo "Usuários do sistema:"
cat /etc/passwd | cut -d: -f1

