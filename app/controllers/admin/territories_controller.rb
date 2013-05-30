module Admin
  class TerritoriesController < BaseController
    respond_to :html

    def index
      @territories = Territory.page(page).per(per)
      respond_with(@territories)
    end

    def show
      @territory = Territory.find(params[:id])
      respond_with(@territory)
    end

    def new
      @territory = Territory.new
      respond_with(@territory) 
    end

    def edit
      show
    end

    def create
      @territory = Territory.create(params[:territory])
      respond_with(:admin, @territory)
    end

    def update
      @territory = Territory.find(params[:id])
      @territory.update_attributes(params[:territory])
      respond_with(:admin, @territory)
    end

    def destroy
      @territory = Territory.find(params[:id])
      @territory.destroy
      respond_with(:admin, @territory)
    end
  end
end
