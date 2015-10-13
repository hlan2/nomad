class ReviewsController < ApplicationController
  before_action :load_tour

  def index
      tour = Tour.find(params[:tour_id])
      @reviews = tour.reviews.order(created_at: :desc)

      #@reviews = Tour.Review.all.order('created_at DESC')#.find(params[:tour_id])
      #@review = Review.find(params[:id])

  end

  def new
    @tour = Tour.find(params[:tour_id])
    #@id = tour_id.user_id



    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.tour = @tour
    if @review.save
      redirect_to tour_reviews_path(@tour)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :body, :rating)
  end

  def load_tour
    @tour = Tour.find_by(params[:tour_id])
  end
end