class Area < ActiveRecord::Base
  belongs_to :city
  has_many :homes
  attr_accessible :name, :city_id

  before_destroy do |area|
    return false unless area.homes.empty?
  end

  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :city_id}
  validates :city, presence: true

  def to_s
    name
  end
end
