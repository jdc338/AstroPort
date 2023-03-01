class BookingsController < ApplicationController
  # before_action :set_spaceship, only: %i[new create]

  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def create
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new(booking_params)
    @booking.spaceship = @spaceship
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:spaceship_id, :start_date, :end_date)
  end

  # def set_spaceship
  #   @spaceship = Spaceship.find(params[:spaceship_id])
  # end

end
