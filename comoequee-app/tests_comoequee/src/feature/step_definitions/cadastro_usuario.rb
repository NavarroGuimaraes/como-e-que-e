# frozen_string_literal: true

Selenium::WebDriver::Chrome.driver_path = 'C:/chromedriver.exe'

@cadastro_usuario

#------------------------------------ Cadastro Usuários ------------------------------------

Dado('que usuário queira realizar os tutoriais') do
  tuto = Page.new
  tuto = tuto.clickOnTutorials()
end


Dado('que o usuário esteja na página inicial do site') do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get 'http://www.comoequee.com.br'
  sleep 3
end

Quando('clicar no botão cadastrar') do
  tuto = Page.new
  tudo.clickOnCadastro()
end

Então('será redirecionado para página de cadastro') do
  register = Page.new
  register.register()
end

Quando('preencher todos os campos') do
  page = Page.new
  page = check.checkTheData()
  if page == true
    page.clickOnRegister()
  else
    page.errorData()
  end
end

Entao('o cadastro será realizado') do
  page = Page.new
  page.msgRegister
end

Given /^I'm in the registration module$/ do
  visits new_session_path
  fills_in "name", :with=> "Cristina Antunes"
  fills_in "email", :with => "cristina_antunes@gmail.com"
  fills_in "phone number", :with => "81998052857"
  fills_in "password", :with => "123456"
  fills_in "password_confirmation", :with => "123456"
  fills_in "facebook_link", :with => "facebook.with/cristina.antunes"
  fills_in "bio", :with => "Eu quero aprender com a ajuda deste aplicativo e desenvolver meus conhecimentos"
  clicks_button "Sign up"
end
