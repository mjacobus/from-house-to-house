class City < ActiveRecord::Base
  attr_accessible :name, :short
  has_many :areas
  has_many :territories

  before_destroy do |city|
    return false unless city.areas.empty?
    return false unless city.territories.empty?
  end

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :short, presence: true, uniqueness: { case_sensitive: false }

end
