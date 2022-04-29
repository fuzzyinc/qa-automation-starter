# frozen_string_literal: true

require 'cucumber'
require 'selenium-webdriver'
require './features/support/driver_helpers'
require 'logger'
#require 'active_support/core_ext/string'
require 'securerandom'

logger = Logger.new($stdout)
logger.level = Logger::WARN

# Setups up the driver object, API Tokens, and Base URL before a feature file scenario executes
Before do |_scenario|
  browser = ENV['BROWSER']
  case browser
  when 'chrome'
    @platform = :web
    @driver = WebDriver.create_chrome_driver
  when 'firefox'
    @platform = :web
    @driver = WebDriver.create_firefox_driver
  when 'safari'
    @platform = :web
    @driver = WebDriver.create_safari_driver
  else
    raise ArgumentError, "Value provided in BROWSER does not match an expected platform! Provided: #{platform} "
  end
end

# Tear down for the driver object
After do |scenario|
  if scenario.failed? && @driver.instance_of?(NilClass) == false
    image_name = SecureRandom.uuid
    @driver.save_screenshot("./test_results/screenshots/#{image_name}.png")
    image = @driver.screenshot_as(:png)
    attach(image, 'image/png')
  end
  @driver&.quit
end
