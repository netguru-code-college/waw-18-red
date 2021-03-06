class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @place = Place.find(params[:place_id])
    @review = @place.reviews.create(review_params)
    if @review.save
      flash[:success] = 'The review has been added successfully!'
      redirect_to @place
    else
      flash[:danger] = 'Your opinion has not been added, check its content!'
      redirect_to @place
    end
  end

  private

  def review_params
    params.require(:review)
          .permit(:comment, :rate)
          .merge!(
            user_id: current_user.id,
          )
  end
end
