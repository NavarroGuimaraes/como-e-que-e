|#language: pt
# encoding: utf-8

Feature: testar o menu e todos os caminhos

To navigate in fomw few clicks though the app
As an user of the system
I Want the system to have a menu

  Scenario: Initial navigation - home

    Given I'm in the register module
    When I Press the button "início"
    Then I shall see the Home page
      And i shall see the initial app's banner 

  Scenario: Navigation comoFunciona - Home

    Given I'm in the register module
    When I press the button "como funciona"
    Then I shall see the home page
      And I shall see the topic Como Funciona?

  Scenario: Navigation tutoriais - Home

    Given I'm in the register module
    When I Press the button "tutoriais"
    Then I Shall see the home page
      And shall see the topic Nossos Tutoriais

  Scenario: Navigation contato - Home

    Given I'm in the register module
    When I Press the button "contato"
    Then I Shall see the home page
      And shall see the topic Contato

  Scenario: Navigation cadastro - Register

    Given I'm in the home page
    When I press the button "cadastro"
    Then I shall see the Register module

  #Vai falhar pois não temos login
  Scenario: Navigation login - Login

    Given I'm in the home page
    When I press the button "login"
    Then I shall see the Login module

  #Scenario ruim
  Scenario: Navigation Meu Perfil - Home

    Given I'm in the home page
      And my user is not logged in the app
    Then I shall not see the option "Meu perfil"
      And neither shall be able to press this button
