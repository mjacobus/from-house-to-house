class City < ActiveRecord::Base
  attr_accessible :name, :short
  has_many :areas

  before_destroy do |city|
    return false unless city.areas.empty?
  end

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :short, presence: true, uniqueness: { case_sensitive: false }

end
