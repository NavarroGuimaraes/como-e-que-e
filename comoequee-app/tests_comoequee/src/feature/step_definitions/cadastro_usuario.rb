#Empty 
# CENARIO 1 ----------------------------------------------------------------------------------------------

Given(/^I'm in the registration module $/) do
  visit '/register'
end

When(/^I fill the fields: name, email, phone, password, password_confirmation, facebook_link$/) do 
  fill_in 'name', :with => "Cristina Antunes"
  fill_in 'email', :with => "cristina_antunes@gmail"
  fill_in "phone_number", :with => "81998052857"
  fill_in 'password', :with => "123456"
  fill_in 'password_confirmation', :with => "123456"
  fill_in 'facebook_link', :with => "facebook.com/cristina.antunes"
  fill_in 'bio' :with => "Eu quero aprender com a plataforma a aprimorar meus conhecimentos"

And(/^press the button Cadastrar $/) do 
  page.find(:signup, 'Cadastrar')
end

Then(/^the system shall show a pop-up  with a message of sucess$/) do 
  expect(page).to have_content 'Seu usuário foi cadastrado com sucesso!'
end

# CENARIO 2 ----------------------------------------------------------------------------------------------

Given(/^I'm in the registration module $/) do
  visit '/register'
end

When(/^When I fill the fields "name", "email", "password", "password_confirmation" $/) do 
  fill_in 'name', :with => "Cristina Antunes"
  fill_in 'email', :with => "cristina_antunes@gmail"
  fill_in 'password', :with => "123456"
  fill_in 'password_confirmation', :with => "123456"

And(/^press the button Cadastrar $/) do 
  page.find(:signup, 'Cadastrar')
end

Then(/^the system shall show a pop-up  with a message of sucess $/) do 
  expect(page).to have_content 'Seu usuário foi cadastrado com sucesso!'
end

# CENARIO 3 ----------------------------------------------------------------------------------------------

Given(/^I'm in the registration module $/) do
  visit '/register'
end

When(/^When I fill the fields "phone number", "facebook_link", "bio" $/) do 
  fill_in 'phone_number', :with => "81998052857"
  fill_in 'facebook_link', :with => "facebook.com/cristina.antunes"
  fill_in 'bio', :with => "Eu quero aprender com a plataforma a aprimorar meus conhecimentos"

Then(/^The button "Register" shall be disabled $/) do 
  expect(page).to have_button('Cadastrar', disabled: true)
end


# CENARIO 4 ----------------------------------------------------------------------------------------------

Given(/^I'm in the registration module $/) do
  visit '/register'
end

When(/^I fill the fields: name, email, phone, password, password_confirmation, facebook_link$/) do 
  fill_in 'name', :with => "Cristina Antunes"
  fill_in 'email', :with => "cristina_antunes@gmail"
  fill_in "phone_number", :with => "81998052857"
  fill_in 'password', :with => "123456"
  fill_in 'password_confirmation', :with => "123456"
  fill_in 'facebook_link', :with => "facebook.com/cristina.antunes"
  fill_in 'bio' :with => "Eu quero aprender com a plataforma a aprimorar meus conhecimentos"

And(/^press the button Cadastrar $/) do 
  page.find(:signup, 'Cadastrar')
end

Then(/^the system shall show a pop-up  with a message of sucess$/) do 
  expect(page).to have_content 'Seu usuário foi cadastrado com sucesso!'
end


# CENARIO 5 ----------------------------------------------------------------------------------------------

Given(/^I'm in the registration module $/) do
  visit '/register'
end

When(/^When I press the button "Entrar" $/) do 
  page.find(:signin, 'Entrar')
  
Then(/^The button "Register" shall be disabled $/) do 
  expect(page).to have_current_path(register_path(search: 'login'))
end


# CENARIO 6 ----------------------------------------------------------------------------------------------

Given(/^I'm in the registration module $/) do
  visit '/register'
end

When(/^When I fill the fields "name", "email", "password", "password_confirmation" $/) do 
  fill_in 'name', :with => "Cristina Antunes"
  fill_in 'email', :with => "cristina_antunes@gmail"
  fill_in 'password', :with => "123456"
  fill_in 'password_confirmation', :with => "098765"

And(/^press the button Cadastrar $/) do 
  page.find(:signup, 'Cadastrar')
end

Then(/^the system shall show a message of error $/) do 
  expect(page).to have_content 'As senhas digitadas não coincidem'
end
