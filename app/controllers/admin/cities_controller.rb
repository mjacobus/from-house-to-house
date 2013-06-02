require 'admin_controller'

class Admin::CitiesController < InheritedResources::Base
  include AdminController

  def city_url(city)
    admin_city_url(city)
  end

end
