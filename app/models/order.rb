class Order < ApplicationRecord
  after_create :send_new_order_email

  belongs_to :user
  belongs_to :product

  ORDER_RATING = [1, 2, 3, 4, 5]

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :rating, inclusion: { in: ORDER_RATING, on: :update }
  validates :review, length: { minimum: 30, on: :update }

  def pending?
    delivery_time > Date.today
  end

  # def rated?
  #   created_at != updated_at
  # end

  private

  def send_new_order_email
    UserMailer.new_order(self).deliver_now
  end
end
