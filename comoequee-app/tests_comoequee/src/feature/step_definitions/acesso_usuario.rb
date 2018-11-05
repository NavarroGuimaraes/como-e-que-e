#Empty
# CENARIO 1 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^I fill the fields name, password $/) do 
  fill_in 'name', :with => "Cristina Antunes"
  fill_in 'password', :with => "123456"
end

And(/^press the button Acessar minha conta $/) do 
  page.find(:signup, 'Acessar minha conta')
end

Then(/^the system shall show a pop-up  open Meu Perfil module $/) do 
  expect(page).to have_current_path(user_access_path(search: 'my_profile'))
end


# CENARIO 2 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^press the button Acessar com gmail $/) do 
  page.find(:signup, 'Acessar com gmail')
end

When(/^I fill the fields email, password $/) do 
  fill_in 'email', :with => "Cristina_Antunes@gmail.com"
  fill_in 'password', :with => "00669988ca"
end

Then(/^the system shall open Meu Perfil module$/) do 
  expect(page).to have_current_path(user_access_path(search: 'my_profile'))
end

# CENARIO 3 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^press the button Acessar com facebook $/) do 
  page.find(:signup, 'Acessar com facebook')
end

When(/^I fill the fields email, password $/) do 
  fill_in 'email', :with => "Cristina_Antunes@hotmail.com"
  fill_in 'password', :with => "00669988ca"
end

And(/^press the button Acessar com facebook $/) do 
  page.find(:signup, 'Login')
end

Then(/^the system shall open Meu Perfil module$/) do 
  expect(page).to have_current_path(user_access_path(search: 'my_profile'))
end

# CENARIO 4 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^press the button Acessar com facebook $/) do 
  page.find(:signup, 'Acessar com facebook')
end

And(/^I fill the fields email, password $/) do 
  fill_in 'email', :with => "Cristina_Antunes@hotmail.com"
  fill_in 'password', :with => "00669988ca"
end

And(/^press the button Acessar com facebook $/) do 
  page.find(:signup, 'Login')
end

Then(/^the system shall open Meu Perfil module$/) do 
  expect(page).to have_current_path(user_access_path(search: 'my_profile'))
end


# CENARIO 5 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^I fill the fields name, password $/) do 
  fill_in 'name', :with => "Cristina Antunes"
end

And(/^press the button Acessar minha conta $/) do 
  page.find(:signup, 'Acessar minha conta')
end

Then(/^the system shall show a pop-up  an error message  $/) do 
  expect(page).to have_content 'Ops! Você se esqueceu da senha. Favor preencher o campo senha'
end


# CENARIO 6 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^I fill the fields name, password $/) do 
  fill_in 'password', :with => "123456"
end

And(/^press the button Acessar minha conta $/) do 
  page.find(:signup, 'Acessar minha conta')
end

Then(/^the system shall show a pop-up  an error message  $/) do 
  expect(page).to have_content 'Ops! Você se esqueceu do nome/e-email. Favor preencher o campo nome/e-email'
end

# CENARIO 7 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^I fill the fields name, password $/) do 
  fill_in 'name', :with => "Cristina Antunes"
  fill_in 'password', :with => "12345600000"
end

And(/^press the button Acessar minha conta $/) do 
  page.find(:signup, 'Acessar minha conta')
end

Then(/^the system shall show a pop-up  an error message  $/) do 
  expect(page).to have_content 'Usuário e/ou Senha incorretos, favor verificar!'
end


# CENARIO 8 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^press the button Acessar com gmail $/) do 
  page.find(:signup, 'Acessar com gmail')
end

And(/^I fill the fields email, password $/) do 
  fill_in 'email', :with => "Cristina_Antunes_1234@gmail.com"
  fill_in 'password', :with => "00669988ca"
end

And(/^press the button Acessar com facebook $/) do 
  page.find(:signup, 'Login')
end

Then(/^the system shall open Meu Perfil module$/) do 
  expect(page).to have_content 'Couldn\'t find your Google Account'
end


# CENARIO 9 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^press the button Acessar com gmail $/) do 
  page.find(:signup, 'Acessar com gmail')
end

And(/^I fill the fields email, password $/) do 
  fill_in 'email', :with => "Cristina_Antunes@gmail.com"
  fill_in 'password', :with => "qualeraminhasenha"
end

And(/^press the button Acessar com facebook $/) do 
  page.find(:signup, 'Login')
end

Then(/^the system shall open Meu Perfil module$/) do 
  expect(page).to have_content 'Wrong password. Try again or click Forgot password to reset it.'
 end

# CENARIO 10 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^press the button Acessar com facebook $/) do 
  page.find(:signup, 'Acessar com facebook')
end

And(/^I fill the fields email, password $/) do 
  fill_in 'email', :with => "Cristina_Antunes_1234@hotmail.com"
  fill_in 'password', :with => "00669988ca"
end

And(/^press the button Acessar com facebook $/) do 
  page.find(:signup, 'Login')
end

Then(/^the system shall open Meu Perfil module$/) do 
  expect(page).to have_content 'The email you’ve entered doesn’t match any account. Sign up for an account.'
end


# CENARIO 11 ----------------------------------------------------------------------------------------------

Given(/^I'm in login module $/) do
  visit '/login'
end

When(/^press the button Acessar com facebook $/) do 
  page.find(:signup, 'Acessar com facebook')
end

And(/^I fill the fields email, password $/) do 
  fill_in 'email', :with => "Cristina_Antunes@hotmail.com"
  fill_in 'password', :with => "qualeraminhasenha"
end

And(/^press the button Acessar com facebook $/) do 
  page.find(:signup, 'Login')
end

Then(/^the system shall open Meu Perfil module$/) do 
  expect(page).to have_content 'The password you’ve entered is incorrect. Forgot Password?'
end