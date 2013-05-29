class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_logged_in?
  	if current_user
  		return true
  	end
  	return false
  end

  def check_login
  	unless is_logged_in?
  		redirect_to '/login', :alert => "You need to log in to do that."
  	end
  end

  helper_method :current_user
  helper_method :is_logged_in?
  helper_method :check_login
end
