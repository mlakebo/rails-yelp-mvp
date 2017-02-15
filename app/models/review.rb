class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: (0..5).to_a,
     message: "%{value} is not a valid rating" }
end
