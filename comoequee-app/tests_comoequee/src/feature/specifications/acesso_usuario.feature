# encoding: utf-8

Feature: test the user access in the plataform

to folow up with the tutorials
As a system user
I want to do my login in many ways

Scenario: successful access - Login - Email
  Given  I'm in login module
  When I fill the fields name, password 
	  And click on the button "acessar minha conta"
  Then the app shall redirect me to Meu Perfil module

Scenario: successful access - Login - Gmail
  Given  I'm in the login module
  When I click on the button "Acessar com Gmail"
    And fill the field email and password
    And click on the button "Next"
  Then the app shall redirect me to to Meu Perfil module

Scenario: successful access - Login - Facebook
  Given  I'm in the login module
  When I click on the button "Acessar com Facebook"
    And fill the field email and password
    And click on the button "Log In"
  Then the app shall redirect me to to Meu Perfil module

Scenario: Access with no password given - Login - Email
  Given  I'm in the login module
  When I fill the field name 
	  And I click on the button "acessar minha conta"
  Then the system shall show the message: "Ops! Você se esqueceu da senha. Favor preencher o campo senha"

Scenario: access with no name given - Login - Email
  Given  I'm in the login module
  When i fill the field password
	  And I click on the button "acessar minha conta"
  Then the system shall show the message: "Ops! Você se esqueceu do nome/e-email. Favor preencher o campo nome/e-email"

Scenario: access with wrong password or wrong user - Login - Email
  Given  I'm in the login module
  When I fill the field "nome" com "Cristina Antunes"
    And I fill the field "senha" com "11111111111"
	  And I click on the button "acessar minha conta"
  Then the system shall show the message: "Usuário e/ou Senha incorretos, favor verificar"

Scenario: access a invalid email - Login - Gmail
  Given  I'm in the login module
  When I click on the button "Acessar com Gmail"
    And fill the field with an invalid email
    And click on the button "Next"	  
  Then the system shall show the message: "Couldn't find your Google Account"

Scenario: access a email with the wrong password - Login - Gmail
  Given  I'm in the login module
  When I click on the button "Acessar com Gmail"
    And fill the field email and the field password
    And click on the button "Next"
  Then the system shall show the message: "Wrong password. Try again or click Forgot password to reset it."

Scenario: access a email with the wrong password - Login - Facebook
  Given  I'm in the login module
  When I click on the button "Acessar com Facebook"
    And fill the field with an invalid email 
    And click on the button "Log In"    
  Then the system shall show the message: "The email you’ve entered doesn’t match any account. Sign up for an account."

Scenario: access an invalid e-mail - Login - Facebook
  Given  I'm in the login module
  When I click on the button "Acessar com Facebook"
    And fill the field email valid and the field password with an invalid password
    And click on the button "Log In"
  Then the system shall show the message: "The password you’ve entered is incorrect. Forgot Password?"