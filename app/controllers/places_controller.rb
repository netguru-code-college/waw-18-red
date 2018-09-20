class PlacesController < ApplicationController
  before_action :find_place, only: [:show, :edit, :update, :destroy, :find_place]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :place_owner, only: [:edit, :update, :destroy]

  def index
    @places = Place.all.paginate(page: params[:page], per_page: 5).order('updated_at DESC')
  end

  def show
  end

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

  def edit
  end

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

  private

  def place_params
    params.require(:place)
          .permit(:name, :adress, :description, :lat, :long, :rate, :street, :house_number, :local_number, :city)
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
