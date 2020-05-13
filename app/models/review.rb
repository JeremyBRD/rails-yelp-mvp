class Review < ApplicationRecord
  RATING = (0..5)
  validates :content, :rating, presence: true
  belongs_to :restaurant
  validates :rating, inclusion: { in: RATING }, numericality: { only_integer: true }
end
