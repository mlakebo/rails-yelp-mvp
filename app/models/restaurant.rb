class Restaurant < ApplicationRecord
  validates :name, presence: true, allow_blank: false
  validates :address, presence: true
  validates :category, presence: true, inclusion: {
    in: ["chinese", "italian", "japanese", "french", "belgian"],
    allow_nil: false,
    message: "%{value} is not a valid category" }
  has_many :reviews, dependent: :destroy
end
