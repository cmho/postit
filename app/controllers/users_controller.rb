class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save!
			session[:user_id] = @user.id
			redirect_to posts_path, :notice => "Welcome, #{@user.name}."
		else
			flash.now.alert "There was an error creating your account."
			render :new
		end
	end

	def edit
		@user = User.find(session[:user_id])
	end

	def update
		@user = User.find(params[:id])
	end
end