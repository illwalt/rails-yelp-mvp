class Review < ApplicationRecord
  belongs_to :restaurant

  # validation
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, :inclusion => 0..5
end
