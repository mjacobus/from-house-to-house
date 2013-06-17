require 'publisher_controller'

class Publisher::HomesController < InheritedResources::Base 
  include PublisherController

  def home_url(home)
    publisher_home_url(home)
  end
end
