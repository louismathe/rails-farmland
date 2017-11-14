class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'farms/show'
  end

end
