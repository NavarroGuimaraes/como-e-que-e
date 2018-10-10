#language: pt
# encoding: utf-8

Funcionalidade: testar o cadastramento de usuarios com sucesso

#-------------------------------- DESCRIÇÃO DO CENÁRIO --------------------------------------
#Para acompanhar os tutoriais da aplicação
#Como usuário do sistema
#Eu quero fazer meu cadastro no sistema

Contexto: cadastro no sistema
Dado que usuário queira realizar os tutoriais

#--------------------------------------------------------------------------------------------

  @cadastro_usuario
  Esquema do Cenário: realizar cadastro de novos usuários

#------------------------------------- Home -------------------------------------------------

  Então Home - Clicar em Cadastro
  Então Utils - Capturar Evidencia
#--------------------------------------------------------------------------------------------

#------------------------------------- Cadastro ---------------------------------------------

  Então Cadastro - Verificar botão
  Então Utils - Capturar Evidencia
  Então Cadastro - Preencher Nome "<nome>"
  Então Cadastro - Preencher Email "<email>"
  Então Cadastro - Preencher Telefone "<telefone>"
  Então Cadastro - Preencher Senha "<senha>"
  Então Cadastro - Preencher Confirmação Senha "<confirmação_senha>"
  Então Cadastro - Preencher Link Facebook "<link_facebook>"
  Então Cadastro - Preencher Biografia "<biografia>"
  Então Cadastro - Clicar Choose File
  Então Cadastro - Anexar Imagem
  Então Utils - Capturar Evidencia
  Então Cadastro - Clicar em Cadastrar
  Então Utils - Capturar Evidencia
#--------------------------------------------------------------------------------------------

#------------------------------------- Preenchimentos ---------------------------------------
Exemplos:
  | nome             | email                      | telefone    | senha  | confirmação_senha | link_facebook                 | biografia                                                                 |
  | Cristina Antunes | cristina_antunes@gmail.com | 81998052857 | 123456 | 123456            | facebook.com/cristina.antunes | Quero aprender muito com essa plataforma e desenvolver meus conhecimentos |
