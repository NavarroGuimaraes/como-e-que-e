#language: pt
# encoding: utf-8

Feature: testar o formulário de contato

Para entrar em contato com os administradores 
Como usuário do sistema
Eu quero que o sistema possua um formulário de contato

  Cenário: Enviar contato sem campos preenchidos - Home

     Dado que eu estou na página ContatoHome
     Quando eu clico no botão "Enviar"
     Então o sistema irá exibir uma mensagem "Favor preencher os campos da parte de Contato"
     

  Cenário: Enviar contato com sucesso - Home

    Dado que eu estou na página ContatoHome
    Quando eu preencher todos os campos
      E eu clico no botão "Enviar"
    Então o sistema irá exibir uma mensagem "Contato realizado com sucesso, aguarde um retorno no email informado no prazo de até 5 dias utéis"

  Cenário: Enviar contato sem campo email preenchido - Home

    Dado que eu estou na página ContatoHome
    Quando eu preencher o campo Nome com "Cristina Antunes"
      E preencho o campo Descrição com "Gostaria de indicar o curso de como usar o email, que não localizei na ferramenta de vocês."
      E eu clico no botão "Enviar"
    Então o sistema irá exibir uma mensagem "Favor preencher o email, para poder enviar seu contato"

  Cenário: Enviar contato sem o campo Descrição preenchido - Home
    Dado que eu estou na página ContatoHome
    Quando eu preencher o campo Nome com "Cristina Antunes"
      E preencho o campo Email com "cristina_antunes@gmail"
      E eu clico no botão "Enviar"
    Então o sistema irá exibir uma mensagem "Favor preencher a Descrição, para poder enviar seu contato"
    
  Cenário: Enviar contato sem o campo Nome preenchido - Home
    Dado que eu estou na página ContatoHome
    Quando eu preencher o campo Email com "cristina_antunes@gmail"
      E preencho o campo Descrição com "Gostaria de indicar o curso de como usar o email, que não localizei na ferramenta de vocês."
      E eu clico no botão "Enviar"
    Então o sistema irá exibir uma mensagem "Contato realizado com sucesso, aguarde um retorno no email informado no prazo de até 5 dias utéis"

 
