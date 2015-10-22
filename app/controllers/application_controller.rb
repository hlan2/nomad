class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def authenticate
  	unless current_user
  		redirect_to login_path
  	end
  end

  def current_user
    @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])

 #  	if ( @current_user )
 #  		return @current_user
 #  	else
	# 	user = User.find_by(id: session[:user_id])
	# 	@current_user = user
	# 	return user
	# end


  end
end
