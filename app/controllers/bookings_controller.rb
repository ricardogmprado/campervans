class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.campervan = Campervan.find(params[:campervan_id])
    @booking.user = current_user
    @booking.save

    redirects_to booking_path(@booking)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  # def calculate_total_price
  # end
end
