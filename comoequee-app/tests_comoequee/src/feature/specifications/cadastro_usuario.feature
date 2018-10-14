#language: pt
# encoding: utf-8

Funcionalidade: testar o cadastramento de usuarios com sucesso

Para acompanhar os tutoriais da aplicação
Como usuário do sistema
Eu quero fazer meu cadastro no sistema

Cenário: cadastro com sucesso
  Dado que estou na tela de Cadastro
  Quando eu preencho o campo "nome" com "Cristina Antunes"
    E preencho o campo "email" com "cristina_antunes@gmail.com"
    E preencho o campo "telefone" com "81998052857"
    E preencho o campo "senha" com "123456"
    E preencho o campo "confirmação_senha" com "123456"
    E preencho o campo "link_facebook" com "facebook.com/cristina.antunes"
    E preencho o campo "biografia" com "Quero aprender muito com essa plataforma e desenvolver meus conhecimentos"
    E aperto o botão "cadastrar"
  Então o sistema exibe um pop-up  com a mensagem "Usuário cadastrado com sucesso"


Cenário: Cadastro com dados não obrigatórios em branco
  Dado que estou na tela de Cadastro
  Quando eu preencho o campo "nome" com "Cristina Antunes"
    E preencho o campo "email" com "cristina_antunes@gmail.com"
    E preencho o campo "senha" com "123456"
    E preencho o campo "confirmação_senha" com "123456"
    E aperto o botão "cadastrar"
  Então o sistema exibe um pop-up  com a mensagem "Usuário cadastrado com sucesso"


Cenário: Cadastro com dados obrigatórios em branco
  Dado que estou na tela de Cadastro
  Quando eu preencho o campo "telefone" com "81998052857"
    E preencho o campo "link_facebook" com "facebook.com/cristina.antunes"
    E preencho o campo "biografia" com "Quero aprender muito com essa plataforma e desenvolver meus conhecimentos"
    E aperto o botão "cadastrar"
  Então o botão "cadastrar" estará desabilitado

Cenário: cancelamento de cadastro
  Dado que estou na tela de Cadastro
  Quando eu preencho o campo "nome" com "Cristina Antunes"
    E preencho o campo "email" com "cristina_antunes@gmail.com"
    E preencho o campo "telefone" com "81998052857"
    E preencho o campo "senha" com "123456"
    E preencho o campo "confirmação_senha" com "123456"
    E preencho o campo "link_facebook" com "facebook.com/cristina.antunes"
    E preencho o campo "biografia" com "Quero aprender muito com essa plataforma e desenvolver meus conhecimentos"
    E aperto o botão "cancelar"
  Então irá limpar todos os campos do formulário

Cenário: Login na tela de cadastro
  Dado que estou na tela de Cadastro 
  Quando eu clico no botão "Faça seu Login"
  Então deve exibir a tela fe Login do sistema
