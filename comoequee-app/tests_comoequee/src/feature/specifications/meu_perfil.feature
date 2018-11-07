# encoding: utf-8

Feature: test the access to the 'Meu Perfil' page of the logged in user 
        

I'd like to view my progress in the tutorials i've been doing. Also, to see the tutotials i have already finished and some tutorials indications
Gostaria visualizar o andamento de meus cursos, cursos já concluídos e indicação de alguns cursos
As a user of the system
I'd like to have a 'Meu perfil' page


@meuperfil_editar
Scenario: I'm on my profile and i saw an incorrect information
  Given That i'm on my profile page
  When I click the button "editar"
  Then The system shall show the 'Editar Perfil' module 
  
@meuperfil_emblema 
Scenario: I'm on my profile and i want to know what the emblem in my profile means
  Given That i'm on my profile page
  When I click the button "?"
  Then The System shall show a pop-up explaining the meanings of the badges on my profile
  
@meuperfil_cursosandamento  
Scenario: I'm on my profile and i want to see all my courses in progress
  Given That i'm on my profile page
  When I click the button "veja mais"
  Then The system shall show all my tutorials in progress 
  
@meuperfil_cursosconcluidos    
Scenario: I'm on my profile and i want to see the courses i've already completed
  Given That i'm on my profile page
  When I find the topic "Relembre alguns assuntos"
    And lick on the arrow "para direita"
    And lick on the arrow "para esquerda"
  Then The tutorials list shall slide to the left side
    Then The tutorials list shall slide to the right side
    
@meuperfil_cursosindicados
Scenario: I'm on my profile and i want to see some course indications
  Given That i'm on my profile page
  When I find the topic "Tem vontade de aprender mais coisas?"
    And lick on the arrow "para direita"
    And lick on the arrow "para esquerda"
  Then The tutorials list shall slide to the left side
    Then The tutorials list shall slide to the right side