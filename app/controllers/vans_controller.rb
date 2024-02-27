class VansController < ApplicationController
  before_action :set_task, only: [:show, :update]

  def index
    @vans = Van.all
  end

  def show; end

  def new
    @van = Van.new
  end

  def create
    van = Van.new(van_params)
    van.save
    redirect_to vans_path
  end

  def update
    @van.update(van_params)
    redirect_to task_path(@van)
  end

  private

  def set_van
    @van = Van.find(params[:id])
  end

  def van_params
    params.require(:van).permit(:title, :description, :address, :car_brand, :model, :capacity, :mileage, :production_year, :fuel_type, :price_per_day )
  end
end
