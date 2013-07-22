require "admin_controller"

class Admin::AreasController < InheritedResources::Base
  include AdminController

  def index
    @areas = Area.page(page).per(per)
    respond_with(@areas)
  end

  def area_url(area)
    admin_area_url(area)
  end
end
