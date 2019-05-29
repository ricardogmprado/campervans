class ReviewsController < ApplicationController
  # before_action :set_review, only: [:new, :create]
  def index
    @reviews = policy_scope(Review)
    # @reviews = Review.all
  end

  def new
    @campervan = Campervan.find(params[:campervan_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review
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
