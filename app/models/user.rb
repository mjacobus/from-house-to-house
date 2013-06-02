class User < ActiveRecord::Base
  devise :database_authenticatable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  attr_accessible :email,
    :name,
    :password,
    :password_confirmation,
    :phone,
    :remember_me
  attr_accessible :email,
    :name,
    :password,
    :password_confirmation,
    :phone,
    :remember_me, 
    :admin, as: :admin

  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
