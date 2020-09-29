class User < ApplicationRecord
  # has_many :post_authorings, foreign_key: :post_author_id
  # has_many :authored_posts, through: :post_authorings
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event
  has_many :events, foreign_key: :creator_id, class_name: 'Event'
  # scope :past_events, -> { where('end_date < ?', DateTime.now) }
  # scope :future_events, -> { where('initial_date > ?', DateTime.now) }

  

end
