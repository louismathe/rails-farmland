class UserMailerPreview < ActionMailer::Preview
  def new_order
    order = Order.first
    UserMailer.new_order(order).deliver_now
  end
end
