class FarmsController < ApplicationController
  def index
    @farms = Farm.all
    @hash = Gmaps4rails.build_markers(@farms) do |farm, marker|
      marker.lat farm.latitude
      marker.lng farm.longitude
      marker.infowindow render_to_string(partial: '/components/map_box', locals: { farm: farm })
    end
  end

  def show
    @farm = Farm.find(params[:id])
    @products = Product.where(farm_id: @farm)
    @orders = Order.where(product_id: @products)
    @order = Order.new
    @farm_coordinates = { lat: @farm.latitude, lng: @farm.longitude }
    @hash = Gmaps4rails.build_markers(@farm) do |farm, marker|
      marker.lat farm.latitude
      marker.lng farm.longitude
    end
  end
end
