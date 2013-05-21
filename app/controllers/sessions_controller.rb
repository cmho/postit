class SessionsController < ApplicationController
	def new

	end

	def create
		@user = User.find_by_username(params[:username])
		if @user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_url, :notice => "Welcome, #{user.name}."
		else
			flash.now.alert "Your email or password was incorrect."
			render "new"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => "You have been logged out."
	end
end