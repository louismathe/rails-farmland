class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_order.subject
  #
  def new_order(order)
    @order = order
    @user = @order.user
    mail to: @user.email, subject: "Your order of #{order.product.name}"
  end
end
