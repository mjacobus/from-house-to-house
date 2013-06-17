class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :layout

  def layout
    current_user ? "application" : 'anonymous'
  end
end
