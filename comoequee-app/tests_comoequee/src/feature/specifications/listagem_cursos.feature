#language: pt
# encoding: utf-8

Funcionalidade: testar a listagem de cursos da aplicação

#-------------------------------- DESCRIÇÃO DO CENÁRIO --------------------------------------
#Para escolher um tutorial a fazer
#Como usuário do sistema
#Eu quero que o sistema me apresente uma listagem de todos os cursos

Contexto: listar os tutoriais disponíveis na plataforma
Dado que usuário queira escolher um tutorial para realizar

#--------------------------------------------------------------------------------------------

  @listagem_cursos
  Esquema do Cenário: listar os tutoriais disponíveis para o usuário

#------------------------------------- Home -------------------------------------------------

  Então Home - Acessar Tutoriais
  Então Utils - Capturar Evidencia
  Então Home - Clicar Ver Mais
  Então Utils - Capturar Evidencia
#--------------------------------------------------------------------------------------------

#------------------------------------- Tutoriais --------------------------------------------

  Então Tutoriais - Clicar Próxima Página
  Então Utils - Capturar Evidencia
  Então Tutoriais - Clicar Próxima Página
  Então Utils - Capturar Evidencia
#--------------------------------------------------------------------------------------------