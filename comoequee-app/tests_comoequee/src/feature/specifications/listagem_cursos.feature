#language: EN
# encoding: utf-8

Feature: Test the application's list of tutorials

To choose a tutorial to do
As a user of the system
I Want the system to show me a list of every tutorials that it has.

  Scenario: Ver Mais tutorials - Home

    Given I'm in home page
    When I scroll Down through the home page
      And I see the topic "Nossos tutoriais"
      And I click on the button "Ver Mais"
    Then I shall see the list of tutorials that the app has

  Scenario: To list tutorials in the menu
  
    Given I'm in home page
    When I click on the button "tutoriais"
    Then I shall see the tutorials module with the list of tutorials

  Scenario: List pagination

    Given Tutorials module
    When I click on the button "2"
      And after that I click on the button "3"
    Then I shall see the second page of tutorials
      And I shall see the thrid page of tutorials
