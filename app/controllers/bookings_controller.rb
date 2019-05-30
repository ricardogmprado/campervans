class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :authenticate_user!, only: [:create]
  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @campervan = Campervan.find(params[:campervan_id])
    @booking = Booking.new
  end

  def show
    authorize @booking
    @review = Review.new
  end

  def create
    @booking = Booking.new(booking_params)
    @campervan = Campervan.find(params[:campervan_id])
    @booking.campervan = @campervan
    @booking.user = current_user
    authorize @booking
    # @booking.total_price = calculate_total_price
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "campervans/show"
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  # def calculate_total_price
  #   duration = @booking.end_date - @booking.start_date
  #   duration * @booking.campervan.daily_price
  # end
  # insert
end
