class ReviewsController < ApplicationController
  # before_action :set_review, only: [:new, :create]
  def new
    @campervan = Campervan.find(params[:campervan_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # @review.campervan = Campervan.find(params[:campervan_id])
    if @review.save
      redirect_to campervan_path(@review.campervan)
    else
      render :new
    end
  end

  sprivate

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
