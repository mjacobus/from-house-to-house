require "admin_controller"

class Admin::AreasController < InheritedResources::Base
  include AdminController

  def area_url(area)
    admin_area_url(area)
  end
end
