class ReviewsController < ApplicationController
  # before_action :set_review, only: [:new, :create]
  def new
    @campervan = Campervan.find(params[:campervan_id])
    @review = Review.new
  end

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    # @review.campervan = Campervan.find(params[:campervan_id])
    if @review.save
      redirect_to campervan_path(@review.booking.campervan)
    else render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
