class UsersController < ApplicationController

	def index
		@user = current_user
  		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		if current_user
			redirect_to root_path
		else
			@user = User.new
	 #render 'new.html.erb'
		end
	end


	def create
		@user = User.create(user_params)
		if @user


		redirect_to login_path

		else
			render :new
		end
	end

	private
	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
	end
end
