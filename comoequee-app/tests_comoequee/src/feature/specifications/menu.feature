#language: pt
# encoding: utf-8

Funcionalidade: testar o menu e todos os caminhos

Para navegar de forma direta com poucos cliques a plataforma
Como usuário do sistema
Eu quero que o sistema possua um menu

Cenário: Navegação inicio - Home

  Dado que estou na tela Cadastro
  Quando eu aperto o botão "início"
  Então devo ver a tela Home
    E devo ver o banner inicial do site

Cenário: Navegação comoFunciona - Home

  Dado que estou na tela Cadastro
  Quando eu aperto o botão "como funciona"
  Então devo ver a tela Home
    E devo ver o tópico Como Funciona?

Cenário: Navegação tutoriais - Home

  Dado que estou na tela de Cadastro
  Quando eu aperto o botão "tutoriais"
  Então devo ver a tela Home
    E devo ver o tópico Nossos Tutoriais

Cenário: Navegação contato - Home

  Dado que estou na tela de Cadastro
  Quando eu aperto o botão "contato"
  Então devo ver a tela Home
    E devo ver o tópico Contato

Cenário: Navegação cadastro - Cadastro

  Dado que estou na tela Home
  Quando eu aperto o botão "cadastro"
  Então devo ver a tela de Cadastro

#Vai falhar pois não temos login
Cenário: Navegação login - Login

  Dado que estou na tela Home
  Quando eu aperto o botão "login"
  Então devo ver a tela de Login do sistema

#Cenário ruim
Cenário: Navegação Meu Perfil - Home

  Dado que estou na tela Home
    E meu usuário não está logado
  Então eu não devo ver a opção meu perfil
    E nem conseguir apertar esse botão
