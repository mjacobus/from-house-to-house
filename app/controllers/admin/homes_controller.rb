require 'admin_controller'

class Admin::HomesController < InheritedResources::Base
  include AdminController

  def home_url(home)
    admin_home_url(home)
  end
  
end
