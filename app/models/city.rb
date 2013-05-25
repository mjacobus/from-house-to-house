class City < ActiveRecord::Base
  attr_accessible :name, :short

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :short, presence: true, uniqueness: { case_sensitive: false }

end
