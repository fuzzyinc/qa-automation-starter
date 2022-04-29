# frozen_string_literal: true

require 'selenium-webdriver'

class GoogleExample
  attr_reader :driver

  def initialize(driver)
    @driver = driver
    @timeout = 10
  end

  def navigate_to_url(url)
    driver.get url # 'https://www.google.com'
  end

  def verify_page?
    print driver.current_url
    driver.current_url.include? 'google'
  end
end
