class User < ActiveRecord::Base
  has_many :events, foreign_key: :publisher_id
  devise :database_authenticatable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  PUBLIC_ATTRIBUTES = :name, :email, :password, :passord_confirmation, :phone, :remember_me

  attr_accessible *self::PUBLIC_ATTRIBUTES

  self::PUBLIC_ATTRIBUTES.each do |attribute|
    attr_accessible attribute, as: :admin
  end

  attr_accessible :admin, :publisher, as: :admin

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
