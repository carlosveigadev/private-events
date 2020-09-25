class Event < ApplicationRecord
  # has_many :post_authorings, foreign_key: :authored_post_id
  # has_many :creator, through: :post_authorings, source: :post_author
  belongs_to :creator, class_name: "User", foreign_key: :creator_id
end
