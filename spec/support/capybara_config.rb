require 'capybara/rails'
require 'capybara/rspec'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
    browser: :chrome
  )
end

Capybara.configure do |capybara|
  capybara.default_driver = :selenium #set the browser you want to run the test on
  capybara.current_driver = :selenium
  capybara.run_server = false
  capybara.app_host = "https://prevailhealth.com"
  capybara.always_include_port = true
end

Capybara.raise_server_errors = true
