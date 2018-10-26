Feature: to test the menu and every possible path

To navigate in fomw few clicks though the app
As an user of the system
I Want the system to have a menu

  Scenario: Initial navigation - home

    Given I'm in the register module
    When I Press the button início
    Then I shall see the Home Page

  Scenario: Navigation comoFunciona - Home

    Given I'm in the register module
    When I press the button como funciona
    Then I shall see the ComoFunciona

  Scenario: Navigation tutoriais - Home

    Given I'm in the register module
    When I Press the button tutoriais
      And I Press the button VerMais
    Then I shall see the NossosTutoriais
      And I shall see the Tutoriais

  Scenario: Navigation contato - Home

    Given I'm in the register module
    When I Press the button contato
    Then I shall see the Contato

  Scenario: Navigation cadastro - Register

    Given I'm in the home page
    When I press the button cadastro
    Then I shall see the Cadastro

  #Vai falhar pois não temos login
  Scenario: Navigation login - Login

    Given I'm in the home page
    When I press the button login
    Then I shall see the Login

  #Scenario ruim
  Scenario: Navigation Meu Perfil - Home

    Given I'm in the home page
      And my user is not logged in the app
    Then I shall not see the option MeuPerfil
      And display a following message: "Usuário Não logado"
