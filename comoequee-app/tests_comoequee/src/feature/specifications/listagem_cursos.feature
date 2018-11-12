Feature: Test the application's list of tutorials

To choose a tutorial to do
As a user of the system
I Want the system to show me a list of every tutorials that it has.

  Scenario: Ver Mais tutorials - Home
    Given I'm in the register module
    When I Press the button tutoriais
      And I Press the button VerMais
    Then I shall see the NossosTutoriais
      And I shall see the list of tutorials that the app has

  Scenario: To list tutorials in the menu
    Given I'm in home page
    When I click on the button tutoriais
    Then I shall see the tutorials module with the list of tutorials

  Scenario: List pagination
    Given Tutorials module
    When I click on the button next
      And I click on the button next
    Then I shall see the second page of tutorials
      And I shall see the thrid page of tutorials
