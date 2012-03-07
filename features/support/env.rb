require 'rack'
require 'capybara/cucumber'

Capybara.app = eval "Rack::Builder.new {(#{File.read(File.dirname(__FILE__) + '/../../config.ru')})}"
