# encoding: utf-8

Feature: testar pesquisa por nome de tutorial

Gostaria de localizar rapidamente tutoriais que eu já saiba o nome
Como usuário do sistema
Gostaria de pesquisar por nome algum tutorial


@pesquisanome_seminformacao
Scenario: Estou fazendo uma pesquisa sem informar o curso
  Given Que estou na tela de Tutoriais
  When Clico no botão "pesquisar"
  Then O sistema irá exibir uma mensagem: "Favor informar o curso que deseja buscar."
  
@pesquisanome_cursoinexistente  
Scenario: Estou fazendo uma pesquisa com um curso inexistente
  Given Que estou na tela de Tutoriais
  When Eu preencho o campo "pesquisa" com curso inexistente
    And Clico no botão "pesquisar"
  Then O sistema irá exibir uma mensagem: "Poxa, não encontrou o que procurava? Clica aqui e entre em contato conosco!!"
  
@pesquisanome_cursoexistente    
Scenario: Estou fazendo uma pesquisa com um curso existente
  Given Que estou na tela de Tutoriais
  When Eu preencho o campo pesquisa com curso existente
    And Clico no botão "pesquisar"
  Then O sistema irá exibir o curso pesquisado pelo usuário
  
@pesquisanome_cursoinexistentecontato    
Scenario: Não encontrei o curso e desejo entrar em contato
  Given Que estou na tela de Tutoriais
  When Eu preencho o campo "pesquisa" com curso inexistente
    And Clico no botão "pesquisar"
    And Clico no link "clique aqui"
  Then O sistema irá exibir uma mensagem: "Poxa, não encontrou o que procurava? Clica aqui e entre em contato conosco!!"
    Then O sistema irá direcionar para a tela de Contato 
  