class ToursController < ApplicationController
  def index
    @tours = Tour.all
  end

  def show
  	@tour = Tour.find(params[:id])
  end
  
  def new
  	@tour = Tour.new
  end

  def create
  	@tour = Tour.new(tour_params)
  	if @tour.save
  		redirect_to tours_path
  	else
  		render :new
  	end
  end

  private
  def tour_params
  	params.require(:tour).permit(:tour_name, :tour_description)
  end
 end
