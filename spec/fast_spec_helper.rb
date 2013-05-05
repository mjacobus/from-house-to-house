require 'rspec'
require 'shoulda/matchers'


# Load required files from the app
#
#   app_require 'app/model/profile'
#
def app_require(file)
  require File.expand_path(file)
end

# Load required support files
#
#   support_require 'shared_examples_for_foo'
#   support_require 'shared_examples_for_bar'
#
def support_require(file)
  app_require("spec/support/#{file}.rb")
end


# Load required support files that only applies to the fast specs
#
#   fast_support_require 'database'
#   fast_support_require 'database_cleaner'
#
def fast_support_require(file)
  require "fast_support/#{file}.rb"
end
