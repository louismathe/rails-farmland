class Order < ApplicationRecord
  after_create :send_new_order_email

  belongs_to :user
  belongs_to :product

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :rating, inclusion: { in: (0..5), on: :update }
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
