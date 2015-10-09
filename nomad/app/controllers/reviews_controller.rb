class ReviewsController < ApplicationController
  before_action :load_tour

  def index
    #@review = Review.all
      # if params[:search]
      #   @review = Review.search(params[:search]).order("created_at DESC")
      # else
      @reviews = Review.all.order('created_at DESC')

  end

  def show
    @review = Review.find(params[:id])
  end

  def new
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