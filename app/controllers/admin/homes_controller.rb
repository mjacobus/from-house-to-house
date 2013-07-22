require 'admin_controller'

class Admin::HomesController < InheritedResources::Base
  include AdminController

  def index
    @homes = Home.page(page).per(per)
    respond_with(@homes)
  end

  def home_url(home)
    admin_home_url(home)
  end
  
end
