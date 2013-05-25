class EventType < ActiveRecord::Base
  attr_accessible :name, :slug

  validates :name, presence: true, uniqueness: { case_sensitive: true }
  validates :slug, presence: true, uniqueness: { case_sensitive: true }

  def slug=(value)
    value = value.to_s.parameterize if value
    write_attribute(:slug, value)
  end
end
