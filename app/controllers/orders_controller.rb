class OrdersController < ApplicationController
  before_action :find_product, only: [:create]
  before_action :find_user, only: [:create]
  before_action :find_order, only: [:update, :destroy]

  def create
    @order = Order.new(order_params)
    @order.product = @product
    @order.user = @user

    @farm = @order.product.farm
    @products = Product.where(farm_id: @farm)
    @orders = Order.where(product_id: @products)
    if @order.delivery_time_is_in_the_past?
      render 'farms/show'
    elsif @order.save
      redirect_to orders_path
    else
      render 'farms/show'
    end
  end

  def index
    @orders = Order.where(user: current_user)
    @pending_orders = @orders.pendings
    @past_orders = @orders.past
  end

  def update
    if @order.update(review_params)
      redirect_to orders_path
    else
      @orders = Order.where(user: current_user)
      @pending_orders = @orders.pendings
      @past_orders = @orders.past
      @review = params[:order][:review]
      render :index
    end
  end

  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_path }
      format.js
    end
  end

  private

  def review_params
    params.require(:order).permit(:rating, :review)
  end

  def order_params
    params.require(:order).permit(:quantity, :delivery_time, :product_id)
  end

  def find_order
    @order = Order.find(params[:id])
  end

  def find_product
    @product = Product.find(params[:order][:product_id].to_i)
  end

  def find_user
    @user = current_user
  end
end
