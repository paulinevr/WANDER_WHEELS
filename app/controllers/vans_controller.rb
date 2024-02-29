class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_van, only: [:show, :update]

  def index
    @vans = Van.all
  end

  def show
    @reservation = Reservation.new
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(van_params)
    @van.user = current_user
    if @van.save
      redirect_to van_path(@van)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @van.update(van_params)
    redirect_to van_path(@van)
  end

  private

  def set_van
    @van = Van.find(params[:id])
  end

  def van_params
    params.require(:van).permit(:title, :description, :address, :car_brand, :model, :capacity, :mileage, :production_year, :fuel_type, :price_per_day, photos: [] )
  end
end
