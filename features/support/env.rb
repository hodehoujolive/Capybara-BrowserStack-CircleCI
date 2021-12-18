# frozen_string_literal: true
require 'pry'
require 'allure-cucumber'
require 'capybara/cucumber'
require 'webdrivers/chromedriver'

# Allure
AllureCucumber.configure do |c|
  c.clean_results_directory = true
  c.tms_prefix = 'TMS_'
  c.issue_prefix = 'ISSUE_'
end