# frozen_string_literal: true

require 'selenium-webdriver'
require 'cucumber'
require 'capybara'
require 'capybara/cucumber'

Capybara.config do |config|
  config.default_drive = :selenium_chrome
end
