class PagesController < ApplicationController
  def home
    @farms = Farm.last(6)
  end
end
