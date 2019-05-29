class CampervansController < ApplicationController
  before_action :set_campervan, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @campervans = policy_scope(Campervan)

    @campervans_map = @campervans.where.not(latitude: nil, longitude: nil)
    @markers = @campervans_map.map do |campervan|
      {
        lat: campervan.latitude,
        lng: campervan.longitude
        # infoWindow: render_to_string(partial: "infowindow", locals: { campervan: campervan })
      }
    end
  end

  def show
    authorize @campervan

    @booking = Booking.new
    @booking.campervan = @campervan

    @reviews = @campervan.reviews

    @markers = [{
      lat: @campervan.latitude,
      lng: @campervan.longitude
    }]
  end

  def new
    @campervan = Campervan.new
    authorize @campervan
  end

  def create
    @campervan = Campervan.new(campervan_params)
    authorize @campervan
    @campervan.user = current_user
    if @campervan.save
      redirect_to campervan_path(@campervan.id)
    else
      render :new
    end
  end

  def edit
    authorize @campervan
  end

  def update
    authorize @campervan
    if @campervan.update(campervan_params)
      redirect_to campervan_path(@campervan), notice: 'Van was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @campervan
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
