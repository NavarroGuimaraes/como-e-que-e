Given("I'm in the register module") do
    visit "https://como-e-que-e.herokuapp.com/cadastro"
  end
  
  When("I Press the button início") do
    find_button(inicio).click
  end
  
  Then("I shall see the Home Page") do
    visit "https://como-e-que-e.herokuapp.com"
  end
    
  When("I press the button como funciona") do
    find_button(comoFunciona).click
  end
  
  Then("I shall see the ComoFunciona") do
    visit "https://como-e-que-e.herokuapp.com/comofunciona"
  end
  
  When("I Press the button tutoriais") do
    find_button(tutoriais).click
  end
  
  Then("I shall see the NossosTutoriais") do
    visit "https://como-e-que-e.herokuapp.com/nossostutoriais"
  end

  When("I Press the button VerMais") do
    find_button(VerMais).click
  end
  
  Then("I shall see the Tutoriais") do
    visit "https://como-e-que-e.herokuapp.com/tutoriais"
  end
  
  When("I Press the button contato") do
    find_button(contato).click
  end
  
  Then("I shall see the Contato") do
    visit "https://como-e-que-e.herokuapp.com/contato"
  end
  
  Given("I'm in the home page") do
    visit "https://como-e-que-e.herokuapp.com"
  end
  
  When("I press the button cadastro") do
    find_button(cadastro).click
  end
  
  Then("I shall see the Cadastro") do
    visit "https://como-e-que-e.herokuapp.com/cadastro"
  end
  
  When("I press the button login") do
    find_button(login).click
  end
  
  Then("I shall see the Login") do
    visit "https://como-e-que-e.herokuapp.com/login"
  end
  
  Given("my user is not logged in the app") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I shall not see the option MeuPerfil") do
    find_button(MeuPerfil).click
  end
  
  Then("display a following message: {string}") do |mensagem|
    expect(page).to have_content mensagem 
  end