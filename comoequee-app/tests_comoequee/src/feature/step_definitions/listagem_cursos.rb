# frozen_string_literal: true

Given(/^I'm in the register module $/) do
  visit 'https://como-e-que-e.herokuapp.com/cadastro'
end

When(/^I Press the button tutoriais $/) do
  page.find(:tutorials, 'tutoriais')
end

When(/^I Press the button VerMais $/) do
  page.find(:viewmore, 'Ver Mais')
end

Then(/^I shall see the NossosTutoriais $/) do
  visit 'https://como-e-que-e.herokuapp.com/nossostutoriais'
end

Then(/^I shall see the list of tutorials that the app has $/) do
  visit 'https://como-e-que-e.herokuapp.com/tutoriais'
end

Given(/^I'm in home page $/) do
  visit 'https://como-e-que-e.herokuapp.com'
end

When(/^I click on the button tutoriais $/) do
  page.find(:tutorials, 'tutoriais')
end

Then(/^I shall see the tutorials module with the list of tutorials $/) do
  visit 'https://como-e-que-e.herokuapp.com/tutoriais'
end

Given(/^Tutorials module $/) do
  visit 'https://como-e-que-e.herokuapp.com/tutoriais'
end

When(/^I click on the button next $/) do
  page.find(:next, 'proximo')
end

Then(/^I shall see the second page of tutorials $/) do
  visit 'https://como-e-que-e.herokuapp.com/tutoriais/2'
end

Then(/^I shall see the thrid page of tutorials $/) do
  visit 'https://como-e-que-e.herokuapp.com/tutoriais/3'
end
