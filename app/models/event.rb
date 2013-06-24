class Event < ActiveRecord::Base
  TYPES = %w(visit revisit bible_study)

  belongs_to :status, class_name: EventStatus
  belongs_to :publisher, class_name: User, foreign_key: :publisher_id
  belongs_to :partner, class_name: User, foreign_key: :partner_id
  attr_accessible :date, :goal, :notes, :partner_id, :publisher_id, :status_id, :event_type

  validates :date, presence: true
  validates :goal, presence: true
  validates :publisher, presence: true
  validates :status, presence: true
  validates :event_type, inclusion: { in: TYPES } 
end
