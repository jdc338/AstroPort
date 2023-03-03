class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to bookings_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
