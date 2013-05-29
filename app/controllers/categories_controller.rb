class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def new
		check_login
		@category = Category.new
	end

	def show
		@category = Category.find(params[:id])
	end

	def create
		@category = Category.new(params[:category])

		if @category.save
			redirect_to(categories_path, :notice => "Your category was created successfully.")
		else
			render :action => 'new'
		end
	end

	def edit
		check_login
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])

		if @category.update_attributes(params[:category])
			redirect_to(categories_path, :notice => "Your category was updated successfully.")
		else
			render :action => 'edit'
		end
	end
end