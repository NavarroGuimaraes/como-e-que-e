#language: pt
# encoding: utf-8

Funcionalidade: testar o cadastramento de usuarios sem os campos não obrigatórios preenchidos

#-------------------------------- DESCRIÇÃO DO CENÁRIO --------------------------------------
#Para acompanhar os tutoriais da aplicação
#Como usuário do sistema
#Eu quero fazer meu cadastro no sistema

Contexto: cadastro no sistema sem preencher alguns campos
Dado que usuário queira realizar os tutoriais

#--------------------------------------------------------------------------------------------

  @cadastro_usuario_campos_nao_obrigatorios
  Esquema do Cenário: realizar cadastro de novos usuários

#------------------------------------- Home -------------------------------------------------

  Então Home - Clicar em Cadastro
  Então Utils - Capturar Evidencia
#--------------------------------------------------------------------------------------------

#------------------------------------- Cadastro ---------------------------------------------

  Então Utils - Capturar Evidencia
  Então Cadastro - Validar Botão Desabilitado
  Então Cadastro - Preencher Nome "<nome>"
  Então Cadastro - Preencher Email "<email>"
  Então Cadastro - Preencher Senha "<senha>"
  Então Cadastro - Validar Botão Desabilitado
  Então Cadastro - Preencher Confirmação Senha "<confirmação_senha>"
  Então Cadastro - Validar Botão Habilitado
  Então Utils - Capturar Evidencia
  Então Cadastro - Clicar em Cadastrar
  Então Utils - Capturar Evidencia
#--------------------------------------------------------------------------------------------

#------------------------------------- Preenchimentos ---------------------------------------
Exemplos:
  | nome             | email                      | senha  | confirmação_senha |
  | Cristina Antunes | cristina_antunes@gmail.com | 123456 | 123456            |
