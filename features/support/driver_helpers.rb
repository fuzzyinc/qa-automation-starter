# frozen_string_literal: true

require 'selenium-webdriver'

# Creates the Webdriver and fetches the capabilities to run that driver
class WebDriver
  def self.create_chrome_driver
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--ignore-certificate-errors')
    options.add_argument('--disable-popup-blocking')
    options.add_argument('--disable-translate')
    Selenium::WebDriver.for :chrome, options: options
  end

  def self.create_firefox_driver
    options = Selenium::WebDriver::Firefox::Options.new
    options.add_argument('--disable-popup-blocking')
    Selenium::WebDriver.for :firefox, options: options
  end

  def self.create_safari_driver
    options = Selenium::WebDriver::Safari::Options.new
    Selenium::WebDriver.for :safari, options: options
  end
end
