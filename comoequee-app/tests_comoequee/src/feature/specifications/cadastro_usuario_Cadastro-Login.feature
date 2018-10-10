#language: pt
# encoding: utf-8

Funcionalidade: testar o "cancelamento" do cadastro e o link de login

#-------------------------------- DESCRIÇÃO DO CENÁRIO --------------------------------------
#Para desistir de fazer meu cadastro
#Como usuário do sistema
#Eu quero que tenha um botão que cancele

Contexto: cancelamento do cadastro do usuário no momento do mesmo
Dado que usuário não queira ter uma conta

#--------------------------------------------------------------------------------------------

  @cancelamento_formulario_cadastro
  Esquema do Cenário: não realizar cadastro

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
  Então Cadastro - Clicar em Cancelar
#--------------------------------------------------------------------------------------------

#------------------------------------- Pop-up Cancelamento ----------------------------------

Então Pop-up Cancelamento - Clicar no botão Sim
#--------------------------------------------------------------------------------------------

#------------------------------------- Cadastro ---------------------------------------------

Então Cadastro - Clicar no link Faça Seu Login
#--------------------------------------------------------------------------------------------

#------------------------------------- Preenchimentos ---------------------------------------
Exemplos:
  | nome             | email                      | telefone    | senha  | confirmação_senha | link_facebook                 | biografia                                                                 |
  | Cristina Antunes | cristina_antunes@gmail.com | 81998052857 | 123456 | 123456            | facebook.com/cristina.antunes | Quero aprender muito com essa plataforma e desenvolver meus conhecimentos |
