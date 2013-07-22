require "admin_controller"

class Admin::UsersController < InheritedResources::Base
  include AdminController
  with_role :admin
  before_filter :dont_destroy_yourself, only: :destroy

  def index
    @users = User.page(page).per(per)
    respond_with(@users)
  end

  def dont_destroy_yourself
    if current_user.id == User.find(params[:id]).id
      redirect_to [:admin, :users], alert: t('system.messages.cannot_destroy_yourself')
    end
  end

  def user_url(user)
    admin_user_url(user)
  end
end
