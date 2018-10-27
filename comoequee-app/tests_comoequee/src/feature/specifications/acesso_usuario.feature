#language: pt
# encoding: utf-8

Feature: testar o acesso do usuário na plataforma 

Para entrar acompanhar os tutoriais
Como usuário do sistema
Eu quero ter como fazer meu login no sistema de diversas formas

Scenario: Acesso com sucesso - Login - Email
  Dado Que esteja na página de Login
  Quando eu preencho o campo nome com "Cristina Antunes"
    E preencho o campo senha com "123456"
	  E quando eu clico no botão "acessar minha conta"
  Então o sistema vai direcionar para a tela Meu Perfil

Scenario: Acesso com sucesso - Login - Gmail
  Dado Que esteja na página de Login
  Quando eu clico o botão "Acessar com Gmail"
    E preencho com email
    E clico o botão "Next"
	  E preencho com senha
    E clico o botão "Next"
  Então o sistema vai direcionar para a tela Meu Perfil

Scenario: Acesso com sucesso - Login - Facebook
  Dado Que esteja na página de Login
  Quando eu clico o botão "Acessar com Facebook"
    E preencho com email
	  E preencho com senha
    E clico o botão "Log In"
  Então o sistema vai direcionar para a tela Meu Perfil

Scenario: Acesso sem o campo senha preenchido - Login - Email
  Dado Que esteja na página de Login
  Quando eu preencho o campo "nome" com "Cristina Antunes"
	  E quando eu clico no botão "acessar minha conta"
  Então o sistema vai exibir a mensagem: "Favor preencher o campo Senha"

Scenario: Acesso sem o campo nome preenchido - Login - Email
  Dado Que esteja na página de Login
  Quando eu preencho o campo "senha" com "123456"
	  E quando eu clico no botão "acessar minha conta"
  Então o sistema vai exibir a mensagem: "Favor preencher o campo Nome"

Scenario: Acesso com nome e senha divergente - Login - Email
  Dado Que esteja na página de Login
  Quando eu preencho o campo "nome" com "Cristina Antunes"
    E preencho o campo "senha" com "11111111111"
	  E quando eu clico no botão "acessar minha conta"
  Então o sistema vai exibir a mensagem: "Usuário e/ou Senha incorretos, favor verificar"

Scenario: Acesso conta gmail(email) inválida - Login - Gmail
  Dado Que esteja na página de Login
  Quando eu clico o botão "Acessar com Gmail"
    E preencho com email inválido
    E clico o botão "Next"	  
  Então o sistema vai exibir a mensagem: "Couldn't find your Google Account"

Scenario: Acesso conta gmail(senha) inválida - Login - Gmail
  Dado Que esteja na página de Login
  Quando eu clico o botão "Acessar com Gmail"
    E preencho com email
    E clico o botão "Next"
    E preencho com senha inválida
    E clico o botão "Next"
  Então o sistema vai exibir a mensagem: "Wrong password. Try again or click Forgot password to reset it."

Scenario: Acesso conta facebook(senha) inválida - Login - Facebook
  Dado Que esteja na página de Login
  Quando eu clico o botão "Acessar com Facebook"
    E preencho com email inválido
    E clico o botão "Log In"    
  Então o sistema vai exibir a mensagem: "The email you’ve entered doesn’t match any account. Sign up for an account."

Scenario: Acesso conta facebook(senha) inválida - Login - Facebook
  Dado Que esteja na página de Login
  Quando eu clico o botão "Acessar com Facebook"
    E preencho com email válido
    E clico o botão "Log In"
    E preencho com senha inválida    
  Então o sistema vai exibir a mensagem: "The password you’ve entered is incorrect. Forgot Password?"