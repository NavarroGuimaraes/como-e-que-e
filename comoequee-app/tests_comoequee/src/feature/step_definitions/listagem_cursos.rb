# frozen_string_literal: true

Selenium::WebDriver::Chrome.driver_path = "C:/chromedriver.exe"

@listagem_cursos

#------------------------------------ Listagem dos cursos ------------------------------------
Dado("que o usuário esteja na página HOME") do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get "http://www.comoequee.com.br"
  sleep 3
  page = Page.new
  page.clickOnVerMais()
end

Então("o sistema deve direcionar para a tela TUTORIAIS") do
  page = Page.new
  page.showTutorials()
  sleep 5
  page.showNextPage()
end
