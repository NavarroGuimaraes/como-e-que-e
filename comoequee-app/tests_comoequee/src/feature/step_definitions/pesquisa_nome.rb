# frozen_string_literal: true

# Empty
# CENARIO 1 ----------------------------------------------------------------------------------------------

Given(/^I'm in tutorials home page $/) do
  visit '/tutorials'
end

When(/^I click in a chapter of a tutorial $/) do
  page.find(:css, "search_tutorials").click
end

Then(/^the system shall show the content $/) do
  expect(page).to have_content 'Favor informar o curso que deseja buscar.'
end


# CENARIO 2 ----------------------------------------------------------------------------------------------

Given(/^tutorials home page $/) do
  visit '/tutorials'
end

When(/^I click in the button "proximo" $/) do
  fill_in 'search_tutorial', :with => "Pentear cabelo de boneca"
  page.find(:css, 'search_tutorial').click
end

Then(/^the system shall show the following message $/) do
  expect(page).to have_content 'Poxa, não encontrou o que procurava? Clica aqui e entre em contato conosco!!'
end


# CENARIO 3 ----------------------------------------------------------------------------------------------

Given(/^I'm in tutorials module $/) do
  visit '/tutorials'
end

When(/^I click in the button "proximo" $/) do
  fill_in 'search_tutorial', :with => "Facebook"
  page.find(:css, 'search_tutorial').click
end

Then(/^The system shall show the tutorial seached by the user $/) do
  expect(page).to have_current_path(user_access_path(search: 'search='))
end

# CENARIO 4 ----------------------------------------------------------------------------------------------

Given(/^tutorials home page $/) do
  visit '/tutorials'
end

When(/^I click in the button "proximo" $/) do
  fill_in 'search_tutorial', :with => "Pentear cabelo de boneca"
  page.find(:css, 'search_tutorial').click
end

And(/^the system shall show the following message $/) do
  expect(page).to have_content 'Poxa, não encontrou o que procurava? Clica aqui e entre em contato conosco!!'
  page.find(:css, 'contact_us').click
end

Then(/^the system shall open Meu Perfil module$/) do
  expect(page).to have_current_path(user_access_path(search: 'contact_us'))
end
