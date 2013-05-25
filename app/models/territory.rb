class Territory < ActiveRecord::Base
  belongs_to :city
  attr_accessible :name, :city_id
  validates_associated :city

  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :city_id }
  validates :city, presence: true
end
