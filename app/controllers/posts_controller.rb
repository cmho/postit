class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
    @post = Post.new
    @category_list = Category.all
  end

  def create
  	@post = Post.new(params[:post])

  	if @post.save
  		redirect_to(@post, :notice => "Your post was created successfully.")
  	else
  		render :action => "new"
  	end
  end

  def edit
  	@post = Post.find(params[:id])
    @category_list = Category.all
  end

  def update
  	@post = Post.find(params[:id])

  	if @post.update_attributes(params[:post])
  		redirect_to(@post, :notice => "Your post was updated successfully.")
  	else
  		render :action => "edit"
  	end
  end

  def show
  	@post = Post.find(params[:id])
  	@comments = Comments.find_all_by_post_id(params[:id])
  	@comment = Comments.new
  end
end
