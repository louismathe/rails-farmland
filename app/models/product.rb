class Product < ApplicationRecord
  belongs_to :farm
  has_many :users, through: :orders

  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
