require 'admin_controller'

module Admin
  class TerritoriesController < InheritedResources::Base 
    include AdminController 

    def index
      @territories = Territory.page(page).per(per)
      respond_with(@territory)
    end

    # defaults route_prefix: 'admin'
    #
    # not working.
    #
    # this is a workaround
    # it raises undefined method territory_url 
    def territory_url(territory)
      admin_territory_url(territory)
    end
  end
end
