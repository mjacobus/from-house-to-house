require "admin_controller"

class Admin::UsersController < InheritedResources::Base
  include AdminController
  with_role :admin
  before_filter :dont_destroy_yourself, only: :destroy

  def dont_destroy_yourself
    if current_user.id == User.find(params[:id]).id
      redirect_to [:admin, :users], notice: t('system.messages.cannot_destroy_yourself')
    end
  end
end
