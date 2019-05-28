class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.campervan = Campervan.find(params[:campervan_id])
    @booking.user = User.find(params[:user_id])
    @booking.save

    redirects_to booking_path(@booking)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
