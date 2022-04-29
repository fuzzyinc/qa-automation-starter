# frozen_string_literal: true

require 'cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require './code/example/google_example'

Given(/^google is opened$/) do
  google_page = GoogleExample.new(@driver)
  google_page.navigate_to_url('https://www.google.com')
end

Then(/^current URL contains google$/) do
  google_page = GoogleExample.new(@driver)
  expect(google_page.verify_page?).to eq true
end