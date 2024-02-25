
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'rspec'
require 'rspec/expectations'
require 'pry'
include RSpec::Matchers

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://mercado.carrefour.com.br'
    config.default_max_wait_time = 5
end
