class OrdersController < ApplicationController
  before_action :find_product, only: [:create]
  before_action :find_user, only: [:create]

  def create
    @order = Order.new(order_params)
    @order.product = @product
    @order.user = @user
    if @order.save
      redirect_to '#'
    else
      render '#'
    end
  end

  private

  def order_params
    params.require(:order).permit(:quantity, :delivery_time, :product_id)
  end

  def find_product
    @product = Product.find(params[:order][:product_id].to_i)
  end

  def find_user
    @user = current_user
  end
end
