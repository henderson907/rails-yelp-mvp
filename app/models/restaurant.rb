class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates_associated :reviews
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
