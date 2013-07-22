require 'publisher_controller'

class Publisher::HomesController < InheritedResources::Base 
  include PublisherController

  def index
    @homes = Home.page(page).per(per)
    respond_with(@homes)
  end

  def home_url(home)
    publisher_home_url(home)
  end
end
