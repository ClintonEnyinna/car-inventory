class DealershipsController < ApplicationController
  before_action :logged_in?
  before_action :is_admin?

  def new
    @dealership = Dealership.new
  end

  def create
    @dealership = Dealership.new(dealership_params)

    if @dealership.save
      redirect_to cars_path
    else
      render :new
    end
  end

  private

  def dealership_params
    params.require(:dealership).permit(:name, :address)
  end

end