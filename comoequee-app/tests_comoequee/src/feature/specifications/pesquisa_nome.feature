# encoding: utf-8

Feature: test the seach using the tutorial's name

I'd like to quickly locate a tutorial
As an user of the system
I'd like to seach using the name of the tutorial


@pesquisanome_seminformacao
Scenario: I'm searching withou putting any names on it
  Given I'm in tutorials module
  When click on the button "pesquisar"
  Then the system shall show the following message: "Favor informar o curso que deseja buscar."
  
@pesquisanome_cursoinexistente  
Scenario: I'm searching with an nonexistent tutorial
  Given I'm in tutorials module
  When I fill the field "pesquisa" with an nonexistent tutorial
    And click on the button "pesquisar"
  Then the system shall show the following message: "Poxa, não encontrou o que procurava? Clica aqui e entre em contato conosco!!"
  
@pesquisanome_cursoexistente    
Scenario: I'm searching an existent tutorial
  Given I'm in tutorials module
  When I fill the field "pesquisa" with an existent tutorial
    And click on the button "pesquisar"
  Then The system shall show the tutorial seached by the user
  
@pesquisanome_cursoinexistentecontato    
Scenario: I didn't find the tutorial and I want to make contact
  Given I'm in tutorials module
  When I fill the field "pesquisa" with a nonexistent tutorial
    And click on the button "pesquisar"
    And click on the link "clique aqui"
  Then the system shall show the following message: "Poxa, não encontrou o que procurava? Clica aqui e entre em contato conosco!!"
    And The system will redirect me to the contact module
  