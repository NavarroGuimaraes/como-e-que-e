# encoding: utf-8

Feature: testar os tutoriais da aplicação

Pois eu quero aprender a utilizá-las
Como usuário do sistema
Gostaria de acessar tutoriais sobre ferramentas


@tutorial_testecapitulo
Scenario: Desejo testar os capítulos do tutorial
  Given Que eu esteja na tela de tutorial
  When Quando eu clico em um capítulo de um tutorial
  Then O sistema irá exibir o conteúdo do capítulo
  
@tutorial_capitulosconcluidos  
Scenario: Desejo testar a mudança de cor nos capítulos concluídos
  Given Que eu esteja na tela de tutorial
  When Quando eu clico em um capítulo de um tutorial
    And Concluo o capítulo
    And Clico no botão "proximo"
  Then O capítulo concluído irá ter a cor modificada
  
@tutorial_meuperfil   
Scenario: Desejo testar o atalho ao meu perfil
  Given Que eu esteja na tela de tutorial
  When Eu clico no link "voltar ao perfil"
  Then O sistema irá direcionar para a tela meu perfil
  
@tutorial_forum   
Scenario: Desejo testar o atalho ao forum
  Given Que eu esteja na tela de tutorial
  When Eu clico no link "fazer uma pergunta"
  Then O sistema irá direcionar para a tela de fórum
  
@tutorial_anterior  
Scenario: Desejo testar a ida para tela anterior
  Given Que eu esteja na tela de tutorial
  When Eu clico no botão "anterior"
  Then O sistema irá direcionar para o capítulo anterior
  
@tutorial_proximo
Scenario: Desejo testar a ida para proxima tela
  Given Que eu esteja na tela de tutorial
  When Eu clico no botão "proximo"
  Then O sistema irá direcionar para o próximo capítulo
  