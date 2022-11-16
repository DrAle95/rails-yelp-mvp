class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.new(rest_params)
    @restaurant.save
    redirect_to restaurants_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
    # redirect_to restaurants_url, notice: "Was removed successfully"
  end

  private

  def rest_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
