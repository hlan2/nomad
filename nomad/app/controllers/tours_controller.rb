class ToursController < ApplicationController
  def index
    #@tours = Tour.all
  		if params[:search]
    		@tours = Tour.search(params[:search]).order("created_at DESC")
  		else
    	@tours = Tour.all.order('created_at DESC')
  end
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
  	params.require(:tour).permit(:tour_name, :tour_description, :address)
  end
 end
