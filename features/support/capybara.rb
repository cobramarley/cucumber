
require 'capybara/cucumber'
Capybara.default_driver = :selenium
Capybara.default_driver = :selenium_chrome
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

require 'rspec/retry'

RSpec.configure do |config|
  # show retry status in spec process
  config.verbose_retry = true
  # Try twice (retry once)
  config.default_retry_count = 2
  # Only retry when Selenium raises Net::ReadTimeout
  config.exceptions_to_retry = [Net::ReadTimeout]
end