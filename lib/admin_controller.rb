module AdminController
  extend ActiveSupport::Concern

  included do
    before_filter :authenticate_user!
  end

  def page
    params[:page] 
  end

  def per
    params[:page] || 20
  end
end
