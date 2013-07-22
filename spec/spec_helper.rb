require 'rubygems'
require 'spork'

ENV['RAILS_ENV'] ||= 'test'


Spork.prefork do
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'

  RSpec.configure do |config|
    config.use_transactional_fixtures = true
    config.infer_base_class_for_anonymous_controllers = false
    config.order = "random"

    config.include FactoryGirl::Syntax::Methods
    config.include Devise::TestHelpers, :type => :controller

    config.treat_symbols_as_metadata_keys_with_true_values = true
      config.filter_run :focus => true
        config.run_all_when_everything_filtered = true
  end
end

Spork.each_run do
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
  FactoryGirl.reload
  load "#{Rails.root}/config/routes.rb"
end
