class User < ApplicationRecord
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event
  has_many :events, foreign_key: :creator_id, class_name: 'Event'
end
