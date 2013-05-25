class Event < ActiveRecord::Base
  belongs_to :type,   class_name: EventType
  belongs_to :status, class_name: EventStatus
  attr_accessible :date, :goal, :notes, :status_id, :type_id

  validates :date, presence: true
  validates :goal, presence: true
  validates :status, presence: true
  validates :type, presence: true
end
