module AdminController
  extend ActiveSupport::Concern

  def page
    params[:page] 
  end

  def per
    params[:page] || 20
  end
end
