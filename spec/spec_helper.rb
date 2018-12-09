# frozen_string_literal: true

require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::Console
SimpleCov.start

ENV['SINATRA_ENV'] = 'test'

require_relative '../config/environment'
require_relative 'features/web_helper'
require 'rack/test'
require 'capybara/rspec'
require 'capybara/dsl'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Capybara::DSL

  config.order = 'default'
end

def app
  Rack::Builder.parse_file('config.ru').first
end

Capybara.app = ApplicationController
