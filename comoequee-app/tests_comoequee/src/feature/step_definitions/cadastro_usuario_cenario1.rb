# encoding: utf-8
#
Given("I'm in the registration module") do
  visit '/register'
end

When(/^I fill the field name with Cristina Antunes$/) do 
  fill_in 'name', :with => "Cristina Antunes"
end

When(/^fill the field email with cristina_antunes@gmail$/) do 
  fill_in 'email', :with => "cristina_antunes@gmail"
end

When(/^fill the field phone number with 81998052857$/) do
  fill_in "phone number", :with => "81998052857"
end

When(/^fill the field password with 123456$/) do
  fill_in 'password', :with => "123456"
end

When(/^fill the field password_confirmation with 123456$/) do
  fill_in 'password_confirmation', :with => "123456"
end

When(/^fill the field facebook_link with facebook.com/cristina.antunes$/) do
  fill_in 'password_confirmation', :with => "123456"
end

When(/^press the button {string}$/) do |string|
  page.find(:signup, 'Cadastrar')
end

Then("the system shall show a pop-up  with the following message: {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the app shall show a pop-up with the following message: {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("try to press the button {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("The button {string} shall be disabled") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("Press the button {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("The app shall clean all the fields") do
  pending # Write code here that turns the phrase above into concrete actions
end
