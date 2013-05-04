class User < ActiveRecord::Base
  attr_accessible :email,
    :name,
    :phone

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false }

end
