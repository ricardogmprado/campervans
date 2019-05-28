class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @bookings = Booking.all
  end

  def new
    @campervan = Campervan.find(params[:campervan_id])
    @bookings = Booking.new
  end


  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def create
    @booking = Booking.new(booking_params)
    @campervan = Campervan.find(params[:campervan_id])
    @booking.campervan = @campervan
    @booking.user = current_user
    # @booking.total_price = calculate_total_price
    if @booking.save
      redirect_to booking_path(@booking)
     else
      render "campervans/show"
    end
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  # def calculate_total_price
  #   duration = @booking.end_date - @booking.start_date
  #   duration * @booking.campervan.daily_price
  # end
end
