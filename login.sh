#############################################################################
#Nome Script: Login e senha
#Descrição: Permite que o user coloque o login e senha
#Versão: 0.0
#Licença: GNU
#Autor: Kayky Batista Oliveira
#E-mail: kaykybatistaoliveira@outlook.com
#############################################################################
#!/bin/bash
usuario_correto="admin"
senha_correta="secreta"
echo "Digite seu nome de usuário:"
read usuario
echo "Digite sua senha:"
read -s senha
if [ "$usuario" == "$usuario_correto" ] && [ "$senha" == "$senha_correta" ]; then
  echo "Login realizado com sucesso!"
else
  echo "Usuário ou senha inválidos. Tente novamente."
fi

