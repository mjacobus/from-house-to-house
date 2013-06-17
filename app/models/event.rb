class Event < ActiveRecord::Base
  belongs_to :type,   class_name: EventType
  belongs_to :status, class_name: EventStatus
  belongs_to :publisher, class_name: User, foreign_key: :publisher_id
  belongs_to :partner, class_name: User, foreign_key: :partner_id
  attr_accessible :date, :goal, :notes, :partner_id, :publisher_id, :status_id, :type_id

  validates :date, presence: true
  validates :goal, presence: true
  validates :publisher, presence: true
  validates :status, presence: true
  validates :type, presence: true
end
