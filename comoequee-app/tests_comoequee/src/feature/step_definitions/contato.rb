Given(/^I'm in the contatoHome page $/) do
  visit "https://como-e-que-e.herokuapp.com/contato"
end

When(/^I click on the button Enviar $/) do
  page.find(:send, 'Enviar')
end

Then(/^the system shall show a message {string} $/) do |mensagem|
  expect(page).to have_content mensagem
end

When(/^I fill all fields $/) do
  fills_in "name", :with=> "Cristina Antunes"
  fills_in "email", :with => "cristina_antunes@gmail.com"
  fills_in "descrição", :with => "Eu estou interessada em acompanhar um curso de hotmail e gostaria de ter esse tutorial"
end

When(/^I fill the field Nome $/) do
  fills_in "name", :with=> "Cristina Antunes"
end

When(/^I fill the field Descrição $/) do
  fills_in "descrição", :with => "Eu estou interessada em acompanhar um curso de hotmail e gostaria de ter esse tutorial"
end

When(/^I fill the field Email $/) do
  fills_in "email", :with => "cristina_antunes@gmail.com"
end
