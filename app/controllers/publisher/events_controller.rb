require 'publisher_controller'

class Publisher::EventsController < InheritedResources::Base
  include PublisherController
  belongs_to :home

  def home_event_url(home, event)
    publisher_home_event_url(home, event)
  end
end
