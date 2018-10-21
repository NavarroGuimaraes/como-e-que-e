#language: pt
# encoding: utf-8

Funcionalidade: testar a listagem de cursos da aplicação

Para escolher um tutorial a fazer
Como usuário do sistema
Eu quero que o sistema me apresente uma listagem de todos os cursos

  Cenário: Ver Mais tutoriais - Home

    Dado que estou na tela Home
    Quando eu desço pela tela Home
      E vejo o tópico Nossos tutoriais
      E clico no botão "Ver Mais"
    Então devo ver a listagem de tutoriais do sistema

  Cenário: Listar tutoriais pelo menu
  
    Dado que estou na tela Home
    Quado eu clico no botão "tutoriais"
    Então devo ver a tela tutoriais com a listagem de tutoriais

  Cenário: Paginação da lista

    Dado que estou na tela de Tutoriais
    Quando eu clico no botão "2"
      E depois clico no botão "3"
    Então devo ver a tela 2 de tutoriais
      E devo ver a tela 3 de tutoriais