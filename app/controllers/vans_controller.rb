class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_van, only: [:show, :update, :destroy]

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
      redirect_to my_van_reservations_reservations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @van = Van.find(params[:id])
  end

  def update
    if params[:van][:photos].first.blank?
      params[:van].delete(:photos)
    end
    @van.update(van_params)
    redirect_to van_path(@van)
  end

  def destroy
    @van.destroy
    redirect_to root_path
  end

  private

  def set_van
    @van = Van.find(params[:id])
  end

  def van_params
    params.require(:van).permit(:title, :description, :address, :car_brand, :model, :capacity, :mileage, :production_year, :fuel_type, :price_per_day, photos: [] )
  end
end
