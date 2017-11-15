class OrdersController < ApplicationController
  before_action :find_product, only: [:create]
  before_action :find_user, only: [:create]


  def create
    @order = Order.new(order_params)
    @order.product = @product
    @order.user = @user
    @farm = @order.product.farm
    if @order.save
      redirect_to orders_path
    else
      render 'farms/show'
    end
  end

  def index
    @orders = Order.where(user: current_user)
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
