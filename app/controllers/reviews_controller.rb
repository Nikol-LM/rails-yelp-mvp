class ReviewsController < ApplicationController
before_action :set_restaurant

  def index
    @reviews = @restaurant.reviews
    @review = Review.new
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    # ActiveRecord Magic: @review = @restaurant.reviews.build(review_params)

    if @review.save # false si les validations ne passent pas
      redirect_to restaurant_path(@restaurant)
    else
      render :new # template de views/reviews/new.html.erb
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
