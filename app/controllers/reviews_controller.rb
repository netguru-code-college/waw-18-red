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
      flash[:success] = 'The review was added successfully!'
      redirect_to @review
    else
      render 'new'
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
