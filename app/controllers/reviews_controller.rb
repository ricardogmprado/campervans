class ReviewsController < ApplicationController
  # before_action :set_review, only: [:new, :create]
  def new
    @campervan = Campervan.find(params[:campervan_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.campervan = Campervan.find(params[:campervan_id])
    @review.save
    redirect_to campervan_path(@review.campervan)
  end

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end

  #   @review = @reviews.build(params[:review])

  #   if @review.save
  #     ;flash[:notice] = 'Review was successfully created.'
  #     redirect_to @review
  #   else
  #     flash[:notice] = "Error creating review: #{@review.errors}"
  #     redirect_to @review
  #   end
  # end

  # def new
  #   @review = Review.new
  # end

  #  private

  #   def set_review
  #     @review = Review.find(params[:id])
  #   end

  #   # def review_params
  #   #   params.require(:review).permit(:username, :body)
  #   # end
