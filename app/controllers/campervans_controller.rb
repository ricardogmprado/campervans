class CampervansController < ApplicationController
  before_action :set_campervan, only: [:show, :edit, :update, :destroy]

  def index
    @campervans = Campervan.all
  end

  def show
    @reviews = @campervan.reviews
  end

  def new
    @campervan = Campervan.new
  end

  def create
    @campervan = Campervan.new(campervan_params)
    if @campervan.save
      redirect_to campervan_path(@campervan.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @campervan.update(campervan_params)
    redirect_to campervan_path(@campervan)
  end

  def destroy
    @campervan.destroy
    redirect_to campervans_path
  end

  private

  def set_campervan
    @campervan = Campervan.find(params[:id])
  end

  def campervan_params
    params.require(:campervan).permit(:name, :bed_type, :belted_seats, :sleeps, :location, :photo, :daily_price)
  end
end
