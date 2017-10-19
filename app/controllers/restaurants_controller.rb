class RestaurantsController < ApplicationController

  def create
    @restaurant = Restaurant.new(restaurant_params)

    @restaurant.save
    redirect_to @restaurant
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :location)
    end
end
