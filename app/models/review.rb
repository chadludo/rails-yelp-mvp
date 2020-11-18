class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = (0..5)

  validates :rating, presence: true
  validates :rating, :inclusion => 0..5
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
end
