class Home < ActiveRecord::Base
  belongs_to :territory
  belongs_to :area
  attr_accessible :address_street, :address_number, :phone, :area_id, :territory_id

  validates :address_street, presence: true
  validates :address_number, presence: true
  validates :area, presence: true
  validates :territory, presence: true
end
