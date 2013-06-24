class Event < ActiveRecord::Base
  STATUSES = %w(visited canceled scheduled)
  TYPES = %w(visit revisit bible_study)

  belongs_to :home
  belongs_to :publisher, class_name: User, foreign_key: :publisher_id
  belongs_to :partner, class_name: User, foreign_key: :partner_id
  attr_accessible :date, :goal, :home_id, :notes, :partner_id, :publisher_id, :status, :event_type

  validates :date, presence: true
  validates :goal, presence: true
  validates :home, presence: true
  validates :publisher, presence: true
  validates :status, inclusion: { in: STATUSES } 
  validates :event_type, inclusion: { in: TYPES } 
end
