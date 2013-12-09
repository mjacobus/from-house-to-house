require 'rubygems'
# inspired by http://blog.leshill.org/blog/2011/10/23/fast-specs.html

ENV["RAILS_ENV"] ||= 'test'
ENV["SKIP_RAILS"] ||= 'no'

def is_fast_spec?
  ENV["SKIP_RAILS"] != 'no'
end

def if_fast_spec
  if block_given? && is_fast_spec?
    yield
  end
end

def unless_fast_spec
  unless block_given? && !is_fast_spec?
    yield
  end
end

def app_require(file)
  require File.expand_path(file)
end

unless ENV["SKIP_RAILS"] == 'no'
  require 'fast_spec_helper'
else
  require 'spork'
  require 'coveralls'

  Coveralls.wear!
  require 'simplecov'

  SimpleCov.start 'rails'

  Spork.prefork do
    require File.expand_path("../../config/environment", __FILE__)
    require 'rspec/rails'
    require 'rspec/autorun'
    require 'paperclip/matchers'

    RSpec.configure do |config|
      config.use_transactional_fixtures = true
      config.infer_base_class_for_anonymous_controllers = false
      config.order = "random"

      config.include Paperclip::Shoulda::Matchers
      config.include FactoryGirl::Syntax::Methods
      config.include Devise::TestHelpers, :type => :controller

      config.treat_symbols_as_metadata_keys_with_true_values = true
      config.filter_run focus: true
      config.run_all_when_everything_filtered = true
    end
  end

  Spork.each_run do
    Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
    FactoryGirl.reload
    load "#{Rails.root}/config/routes.rb"
  end
end


RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
end
