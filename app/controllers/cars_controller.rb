class CarsController < ApplicationController
  before_action :logged_in?
  before_action :is_admin?, only: [:new, :create, :destroy]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.includes(:dealership)
              .find(params.dig(:id))
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @car = Car.find(params.dig(:id))
    @car.destroy!

    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :condition, :price, :dealership_id)
  end
end
