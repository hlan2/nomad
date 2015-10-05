class UsersController < ApplicationController
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

		redirect_to root_path

		else
			render :new
		end
	end

	private
	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end
end
	