# frozen_string_literal: true

Given(/^I'm in the register module $/) do
    visit 'https://como-e-que-e.herokuapp.com/cadastro'
  end

When(/^I Press the button início $/) do
  page.find(:home, 'Inicio')
end

Then(/^I shall see the Home Page $/) do
  visit 'https://como-e-que-e.herokuapp.com'
end

When(/^I press the button como funciona $/) do
  find_button(comoFunciona).click
end

Then(/^I shall see the ComoFunciona $/) do
  visit 'https://como-e-que-e.herokuapp.com/index#como-funciona'
end

When(/^I Press the button tutoriais $/) do
  find_button(tutoriais).click
end

Then(/^I shall see the NossosTutoriais $/) do
  visit 'https://como-e-que-e.herokuapp.com/index#tutoriais'
end

When(/^I Press the button VerMais $/) do
  page.find(:viewmore, 'Ver Mais')
end

Then(/^I shall see the Tutoriais $/) do
  visit 'https://como-e-que-e.herokuapp.com/tutoriais'
end

When(/^I Press the button contato $/) do
  page.find(:contact, 'contato')
end

Then(/^I shall see the Contato $/) do
  visit 'https://como-e-que-e.herokuapp.com/index#contato'
end

Given(/^I'm in the home page $/) do
  visit 'https://como-e-que-e.herokuapp.com'
end

When(/^I press the button cadastro $/) do
  page.find(:register, 'cadastro')
end

Then(/^I shall see the Cadastro $/) do
  visit 'https://como-e-que-e.herokuapp.com/cadastro'
end

When(/^I press the button login $/) do
  page.find(:signup, 'login')
end

Then(/^I shall see the Login $/) do
  visit 'https://como-e-que-e.herokuapp.com/login'
end

Given(/^my user is not logged in the app $/) do
  expect(page).to have_current_path(register_path(search: 'login'))
end

Then(/^I shall not see the option MeuPerfil $/) do
  page.find(:myprofile, 'MeuPerfil')
end

Then(/^display a following message: {string} $/) do |mensagem|
  expect(page).to have_content mensagem
end
