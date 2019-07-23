class Restaurant < ApplicationRecord
  # relations
  has_many :reviews, dependent: :destroy

  # validation
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid Catergory" }
end
