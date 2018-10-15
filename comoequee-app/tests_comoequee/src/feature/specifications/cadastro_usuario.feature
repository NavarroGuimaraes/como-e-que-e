#language: EN
# encoding: utf-8

Feature: test the user registration successfully

to go with the tutorial of the application:
As a system user
I want to do my registration in the application

Scenario: Successful registration
  Given I'm in the registration module
  When I fill the field "name" with "Cristina Antunes"
    And fill the field "email" with "cristina_antunes@gmail"
	And fill the field "phone number" with "81998052857"
    And fill the field "password" with "123456"
    And fill the field "password_confirmation" with "123456"
    And fill the field "facebook_link" with "facebook.with/cristina.antunes"
	And fill the field "bio" with "I want to learn with the help of this app and develop my knowledge"
	And press the button "Sign up"
  Then the system shall show a pop-up  with the following message: "User registered successfully"


Scenario: Registration with blank non-required fields
  Given I'm in the registration module
  When I fill the field "name" with "Cristina Antunes"
    And fill the field "email" with "cristina_antunes@gmail.with"
    And fill the field "password" with "123456"
    And fill the field "password_confirmation" with "123456"
    And press the button "Register"
  Then the app shall show a pop-up with the following message: "User registered successfully"


Scenario: Registration with blank required fields
  Given I'm in the registration module
  When I fill the field "phone number" with "81998052857"
	And fill the field "facebook_link" with "facebook.with/cristina.antunes"
    And fill the field "bio" with "I want to learn with the help of this app and develop my knowledge"
    And try to press the button "Register"
  Then The button "Register" shall be disabled

Scenario: Register cancellation
  Given I'm in the registration module
  When I fill the field "Name" with "Cristina Antunes"
    And fill the field "email" with "cristina_antunes@gmail.with"
    And fill the field "phone number" with "81998052857"
    And fill the field "senha" with "123456"
    And fill the field "password_confirmation" with "123456"
    And fill the field "facebook_link" with "facebook.with/cristina.antunes"
    And fill the field "bio" with "I want to learn with the help of this app and develop my knowledge"
    E Press the button "cancel"
  Then The app shall clean all the fields

Scenario: Login in the registration module
  given I'm in the registration module 
  when I press the button "Sign in"
  then the app shall open a sign in module.
