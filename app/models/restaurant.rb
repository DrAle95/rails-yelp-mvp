class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all

  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
  validates :name, presence: true
  validates :address, presence: true
end
