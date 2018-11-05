# encoding: utf-8

Feature: testar o acesso ao 'Meu Perfil' do usuário logado

Gostaria visualizar o andamento de meus cursos, cursos já concluídos e indicação de alguns cursos
Como usuário do sistema
Gostaria de ter uma página de perfil


@meuperfil_editar
Scenario: Estou no Meu Perfil e verifiquei uma informação incorreta
  Given Que estou na tela de Meu Pefil
  When Eu clico no botão "editar"
  Then O sistema irá me direcionar para a tela de Editar Perfil
  
@meuperfil_emblema 
Scenario: Estou no Meu Perfil e desejo saber o que significa o emblema no perfil
  Given Que estou na tela de Meu Pefil
  When Eu clico no botão "?"
  Then O sistema irá exibir um pop-up com a informação sobre o que significa o emblema no perfil
  
@meuperfil_cursosandamento  
Scenario: Estou no Meu Perfil e desejo ver todos meus cursos em andamento
  Given Que estou na tela de Meu Pefil
  When Eu clico no botão "veja mais"
  Then O sistema irá exibir todos os cursos em andamento do usuário
  
@meuperfil_cursosconcluidos    
Scenario: Estou no Meu Perfil e desejo ver meus cursos já concluídos
  Given Que estou na tela de Meu Pefil
  When Eu localizo o tópico "Relembre alguns assuntos"
    And Clico na seta "para direita"
    And Clico na seta "para esquerda"
  Then A lista de cursos irá deslizar para o lado esquerdo da tela
    Then A lista de cursos irá deslizar para o lado direito da tela
    
@meuperfil_cursosindicados
Scenario: Estou no Meu Perfil e desejo ver algumas indicações de cursos
  Given Que estou na tela de Meu Pefil
  When Eu localizo o tópico "Tem vontade de aprender mais coisas?"
    And Clico na seta "para direita"
    And Clico na seta "para esquerda"
  Then A lista de cursos irá deslizar para o lado esquerdo da tela
    Then A lista de cursos irá deslizar para o lado direito da tela