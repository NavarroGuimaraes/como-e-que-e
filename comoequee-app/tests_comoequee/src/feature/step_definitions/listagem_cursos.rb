Given("I'm in the register module") do
  visit "https://como-e-que-e.herokuapp.com/cadastro"
end

When("I Press the button tutoriais") do
  find_button(tutoriais).click
end

When("I Press the button VerMais") do
  find_button(VerMais).click
end

Then("I shall see the NossosTutoriais") do
  visit "https://como-e-que-e.herokuapp.com/nossostutoriais"
end

Then("I shall see the list of tutorials that the app has") do
  visit "https://como-e-que-e.herokuapp.com/tutoriais"
end

Given("I'm in home page") do
  visit "https://como-e-que-e.herokuapp.com"
end

When("I click on the button tutoriais") do
  find_button(tutoriais).click
end

Then("I shall see the tutorials module with the list of tutorials") do
  visit "https://como-e-que-e.herokuapp.com/tutoriais"
end

Given("Tutorials module") do
  visit "https://como-e-que-e.herokuapp.com/tutoriais"
end

When("I click on the button next") do
  find_button(proximo).click
end

Then("I shall see the second page of tutorials") do
  visit "https://como-e-que-e.herokuapp.com/tutoriais/2"
end

Then("I shall see the thrid page of tutorials") do
  visit "https://como-e-que-e.herokuapp.com/tutoriais/3"
end