class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(user: current_user)
  end

  def create
    @reservation = Reservation.new(reservations_params)
    @van = Van.find(params[:van_id])
    @reservation.van = @van
    @reservation.user = current_user
    if @reservation.save
      redirect_to reservations_path
    else
      render 'vans/show', status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  def my_van_reservations
    @reservations = Reservation.where(van: Van.find_by(user: current_user))
  end

  private

  def reservations_params
    params.require(:reservation).permit(:comment, :from, :until)
  end
end
