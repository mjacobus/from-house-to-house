class UserDecorator < Draper::Decorator
  delegate_all

  def welcome_message
    h.t('system.messages.welcome', user: h.current_user.name)
  end
end
