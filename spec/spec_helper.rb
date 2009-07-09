ENV["RAILS_ENV"] ||= 'test'
require File.dirname(__FILE__) + "/../config/environment" unless defined?(RAILS_ROOT)
require 'spec/autorun'
require 'spec/rails'
require RAILS_ROOT + '/bdd_support/fixjour'

Spec::Runner.configure do |config|
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
  config.fixture_path = RAILS_ROOT + '/spec/fixtures/'
end

class Spec::Rails::Example::ControllerExampleGroup
  integrate_views
end

require RAILS_ROOT + '/bdd_support/database_cleaner'
DatabaseCleaner.clean
