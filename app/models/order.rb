class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :rating, inclusion: { in: (0..5), on: :update }
end
