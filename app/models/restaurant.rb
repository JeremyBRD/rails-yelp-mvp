class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORY }
end
