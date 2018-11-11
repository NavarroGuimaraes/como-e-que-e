# frozen_string_literal: true

# Empty
# CENARIO 1 ----------------------------------------------------------------------------------------------

Given(/^I'm in tutorials home page $/) do
  visit '/tutorials'
end

When(/^I click in a chapter of a tutorial $/) do
  page.find(:css, "chapter_tutorials").click
end

Then(/^the system shall show the content $/) do
  expect(page).to have_current_path(user_access_path(search: 'chapter'))
end


# CENARIO 2 ----------------------------------------------------------------------------------------------

Given(/^tutorials home page $/) do
  visit '/tutorials'
end

When(/^I click in the button "proximo" $/) do
  page.find(:css, 'proximo_chapter').click
end

Then(/^the finished chapter whall have a different collor from the non-finished ones $/) do
  page.evaluate_script("jQuery('body').css('gray');") 
end


# CENARIO 3 ----------------------------------------------------------------------------------------------

Given(/^Test the shortcut meu perfil $/) do
  visit '/tutorials'
end

When(/^I click no link "voltar ao perfil" $/) do
  page.find(:css, 'profile')
end

Then(/^the system shall open Meu Perfil module$/) do
  expect(page).to have_current_path(user_access_path(search: 'my_profile'))
end

# CENARIO 4 ----------------------------------------------------------------------------------------------

Given(/^I'm in the tutorials home page $/) do
  visit '/tutorials'
end

When(/^I click no link "fazer uma pergunta" $/) do
  page.find(:css, 'question')
end

Then(/^the system shall redirect me to the tutorials home page $/) do
  expect(page).to have_current_path(user_access_path(search: 'home'))
end


# CENARIO 5 ----------------------------------------------------------------------------------------------

Given(/^I'm in the tutorials home page $/) do
  visit '/login'
end

When(/^I click in the button "anterior" $/) do
  page.find(:css, 'previous_chapter')
end

Then(/^the system shall redirect me to the previous chapter $/) do
  expect(page).to have_current_path(user_access_path(search: 'chapter'))
end

