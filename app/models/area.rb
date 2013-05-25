class Area < ActiveRecord::Base
  belongs_to :city
  attr_accessible :name, :city_id

  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :city_id}
  validates :city, presence: true
end
