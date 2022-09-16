class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
      # If you want to render the view that corresponds to a different template within the same controller, you can use render with the name of the view
    end
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to @restaurant
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
