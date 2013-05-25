class Home < ActiveRecord::Base
  belongs_to :territory
  belongs_to :area
  attr_accessible :address, :number, :phone, :area_id, :territory_id

  validates :address, presence: true
  validates :number, presence: true
  validates :area, presence: true
  validates :territory, presence: true
end
