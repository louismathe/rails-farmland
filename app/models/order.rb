class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  ORDER_RATING = [1, 2, 3, 4, 5]

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :rating, inclusion: { in: ORDER_RATING, on: :update }



  # def rated?
  #   created_at != updated_at
  # end
end
