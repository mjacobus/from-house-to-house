module Admin
  class BaseController < ApplicationController

    def page
      params[:page]
    end

    def per
      params[:per]
    end
    
  end
end