# encoding: utf-8

Feature: to test the tutorials of the application

because i want to lean how to use them
As an user of the system
I'd like to access the tutorials


@tutorial_testecapitulo
Scenario: to test the chapters do tutorial
  Given I'm in the tutorials home page 
  When I click in a chapter of a tutorial
  Then the system shall show the content 
  
@tutorial_capitulosconcluidos  
Scenario: test the color changing in the chapters
  Given I'm in the tutorials home page
  When I click in a chapter of a tutorial
    And I click in the button "proximo"
  Then the finished chapter whall have a different collor from the non-finished ones
  
@tutorial_meuperfil   
Scenario: Test the shortcut to meu perfil
  Given I'm in the tutorials home page
  When  I click no link "voltar ao perfil"
  Then O sistema irá direcionar para a tela meu perfil
  
@tutorial_forum   
Scenario: Test the shortcut to the forum
  Given I'm in the tutorials home page
  When I click no link "fazer uma pergunta"
  Then the system shall redirect me to the tutorials home page
  
@tutorial_anterior  
Scenario: test going to the previous page
  Given I'm in the tutorials home page
  When  I click in the button "anterior"
  Then the system shall redirect me to the previous chapter
  
@tutorial_proximo
Scenario: test going to the next page
  Given I'm in the tutorials home page
  When I click in the button "proximo"
  Then the system shall redirect me to the next page
  