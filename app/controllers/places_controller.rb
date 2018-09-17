class PlacesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @places = Place.all.paginate(page: params[:page], per_page: 5).order('updated_at DESC')
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)

    if @place.save
      flash[:success] = 'The place was added successfully!'
      redirect_to @place
    else
      render 'new'
    end
  end

  private

  def place_params
    params.require(:place)
          .permit(:name, :adress, :description, :lat, :long, :rate)
          .merge!(
            publisher_id: current_user.id,
          )
  end
end
