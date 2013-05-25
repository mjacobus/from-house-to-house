class Territory < ActiveRecord::Base
  belongs_to :city
  has_many :homes
  attr_accessible :name, :city_id
  validates_associated :city

  before_destroy do |territory|
    return false unless territory.homes.empty?
  end

  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :city_id }
  validates :city, presence: true
end
