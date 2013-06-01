require "access_denied"

module AdminController
  extend ActiveSupport::Concern

  included do
    before_filter :authenticate_user!
    before_filter :require_admin!
  end

  def page
    params[:page] 
  end

  def per
    params[:page] || 20
  end

  def require_admin!
    unless current_user.admin?
      raise AccessDenied.new
    end
  end
end
