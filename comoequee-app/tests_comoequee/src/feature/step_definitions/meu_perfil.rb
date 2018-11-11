# frozen_string_literal: true

# Empty
# CENARIO 1 ----------------------------------------------------------------------------------------------

Given(/^I'm in profile home page $/) do
  visit '/my_profile'
end

When(/^I click in a chapter of a tutorial $/) do
  page.find(:css, 'edit').click
end

Then(/^the system shall show the content $/) do
  expect(page).to have_current_path(user_access_path(search: 'edit'))
end


# CENARIO 2 ----------------------------------------------------------------------------------------------

Given(/^profile home page $/) do
  visit '/my_profile'
end

When(/^I click in the button "proximo" $/) do
  page.find(:css, 'about').click
end

Then(/^the system shall show the following message $/) do
  expect(page).to have_current_path(user_access_path(search: 'badges'))
end


# CENARIO 3 ----------------------------------------------------------------------------------------------

Given(/^profile home page $/) do
  visit '/my_profile'
end

When(/^I click in the button "proximo" $/) do
  page.find(:css, 'see_more').click
end

Then(/^the system shall show the following message $/) do
  expect(page).to have_current_path(user_access_path(search: 'progress'))
end

# CENARIO 4 ----------------------------------------------------------------------------------------------

Given(/^tutorials home page $/) do
  visit '/my_profile'
end

When(/^I find the topic "Relembre alguns assuntos" $/) do
  page.find(:css, 'remember_tutorials').click
end

And(/^the system shall show the following message $/) do
  page.find(:css, 'left_arrow').click
  page.find(:css, 'right_arrow').click
end

Then(/^The tutorials list shall slide to the right side $/) do
  expect(page).to have_current_path(user_access_path(search: 'tutorials'))
end

# CENARIO 4 ----------------------------------------------------------------------------------------------

Given(/^tutorials home page $/) do
  visit '/my_profile'
end

When(/^I find the topic "Relembre alguns assuntos" $/) do
  page.find(:css, 'tutorials_tip').click
end

And(/^the system shall show the following message $/) do
  page.find(:css, 'left_arrow').click
  page.find(:css, 'right_arrow').click
end

Then(/^The tutorials list shall slide to the right side $/) do
  expect(page).to have_current_path(user_access_path(search: 'tutorials'))
end
