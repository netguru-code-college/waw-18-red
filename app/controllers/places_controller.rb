class PlacesController < ApplicationController

  before_action :find_place, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :place_owner, only: %i[edit update destroy]
  before_action :average_rate


  def index
    @places = Place.all.paginate(page: params[:page], per_page: 5).order('updated_at DESC')

  end


  def show; end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)

    if @place.save
      flash[:success] = 'The place has been added successfully!'
      redirect_to @place
    else
      flash[:danger] = 'The place has not been added, check the form fields!'
      render 'new'
    end
  end

  def edit; end

  def update
    if @place.update_attributes(place_params)
      flash[:success] = 'The place has been edited successfully!'
      redirect_to @place
    else
      flash[:danger] = 'The place has not been edited, check the form fields!'
      render 'edit'
    end
  end

  def destroy
    @place.destroy
    flash[:success] = 'The place has been destroyed successfully!'
    redirect_to root_path
  end

  def average_rate

    Place.all.each {|place|
    if place.reviews.count == 0
      place.avg_rate = place.rate
      place.save
    else
      sum = place.rate.to_f
      place.reviews.each {|review| sum += review.rate.to_f}
      place.avg_rate = sum / (place.reviews.count + 1).to_f
      place.save

    end
  }

  end

  private

  def place_params
    params.require(:place)
          .permit(:name, :description, :rate, :avg_rate, :street, :house_number, :local_number, :city)
          .merge!(
            publisher_id: current_user.id,
          )
  end

  def find_place
    @place = Place.find(params[:id])
  end

  def place_owner
    unless @place.publisher_id == current_user.id
      flash[:warning] = 'Access denied as you are not owner of this place.'
      redirect_to root_path
    end
  end
end
