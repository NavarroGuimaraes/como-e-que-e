#language: pt
# encoding: utf-8

Funcionalidade: testar o menu e todos os caminhos

#-------------------------------- DESCRIÇÃO DO CENÁRIO --------------------------------------
#Para navegar de forma direta com poucos cliques a plataforma
#Como usuário do sistema
#Eu quero que o sistema possua um menu

Contexto: Possibilidade de navegação no sistema
Dado que usuário queira navegar entre as telas da plataforma

#--------------------------------------------------------------------------------------------

  @menu
  Esquema do Cenário: navegar por entre o sistema através do menu

#------------------------------------- Home -------------------------------------------------

Então Home - Acessar Inicio
Então Utils - Capturar Evidencia
Então Home - Acessar ComoFunciona
Então Utils - Capturar Evidencia
Então Home - Acessar TutoriaisHome
Então Utils - Capturar Evidencia
Então Home - Acessar Contato
Então Utils - Capturar Evidencia
Então Home - Acessar Cadastro
Então Utils - Capturar Evidencia
Então Cadastro - Clicar em Cancelar
Então Utils - Capturar Evidencia
Então Home - Fazer Login
Então Utils - Capturar Evidencia
# Quando tivermos login, iremos testar o menu do usuário logado.

#--------------------------------------------------------------------------------------------