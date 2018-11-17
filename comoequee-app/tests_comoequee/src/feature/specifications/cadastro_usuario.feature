# encoding: utf-8

Feature: test the user registration successfully

to go with the tutorial of the application:
As a system user
I want to do my registration in the application

Scenario: Successful registration
  Given I'm in the registration module
  When I fill the fields "name", "email" , "phone number", "password", "password_confirmation", "facebook_link", "bio" with valid data
	And press the button "Cadastrar"
  Then the system shall show a pop-up  with the following message: "User registered successfully"


Scenario: Registration with blank non-required fields
  Given I'm in the registration module
  When I fill the fields "name", "email", "password", "password_confirmation" with valid data
    And press the button "Cadastrar"
  Then the app shall show a pop-up with the following message: "User registered successfully"


Scenario: Registration with blank required fields
  Given I'm in the registration module
  When I fill the fields "phone number", "facebook_link", "bio" with valida data
  Then The button "Register" shall be disabled

Scenario: Register cancellation
  Given I'm in the registration module
  When I fill the field "Name", "email", "phone number", "password", "password_confirmation", "facebook_link", "bio"
    And Press the button "cancel"
  Then The app shall clean all the fields

Scenario: Login in the registration module
  Given I'm in the registration module 
  When I press the button "Sign in"
  Then the app shall open a sign in module.

Scenario: Try to create an account inserting two different passwords 
  Given I'm in the registration module
  When I fill the field "name", "email", "password", "password_confirmation" with different passwords
  And press the button "Cadastrar"
  Then the app shall show a message with the following message: "As senhas digitadas não coincidem" 