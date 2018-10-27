# encoding: utf-8

Feature: to test the contact forms 

contact the adminstrators 
As a system user
I want the system to have a contact form which I'd be able to fill and make contact with the adminstrators

  Scenario: Make contact with empty fields - Home

     Given I'm in the contatoHome page 
     When I click on the button "Enviar"
     Then the system shall show a message "Favor preencher os campos da parte de Contato"
     

  Scenario: successful contact - Home

    Given I'm in the contatoHome page 
    When I fill all fields
      And I click on the button "Enviar"
    Then the system shall show a message "Contato realizado with sucesso, aguarde um retorno no email informado no prazo de até 5 dias utéis"

  Scenario: contact with no e-mail - Home

    Given I'm in the contatoHome page 
    When I fill the field "Nome" with "Cristina Antunes"
      And I fill the field "Descrição" with "Gostaria de indicar o curso de witho usar o email, que não localizei na ferramenta de vocês."
      And I click on the button "Enviar"
    Then the system shall show a message "Favor preencher o email, para poder enviar seu contato"

  Scenario: contact with no description  - Home
    Given I'm in the contatoHome page 
    When I fill the field Nome with "Cristina Antunes"
      And I fill the field Email with "cristina_antunes@gmail"
      And I click on the button "Enviar"
    Then the system shall show a message "Favor preencher a Descrição, para poder enviar seu contato"
    
  Scenario: Contact with no name on it - Home
    Given I'm in the contatoHome page 
    When I fill the field Email with "cristina_antunes@gmail"
      And I fill the field Descrição with "Gostaria de indicar o curso de witho usar o email, que não localizei na ferramenta de vocês."
      And I click on the button "Enviar"
    Then the system shall show a message "Contato realizado with sucesso, aguarde um retorno no email informado no prazo de até 5 dias utéis"

 
