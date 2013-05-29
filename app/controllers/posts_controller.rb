class PostsController < ApplicationController
  def index
  	@posts = Post.order("created_at DESC").all
  end

  def new
    check_login
    @post = Post.new
    @category_list = Category.all
  end

  def create
    params[:post][:categories].delete("")
    params[:post][:categories].map! {|category| Category.find(category)}
  	@post = Post.new(params[:post])
  	if @post.save
  		redirect_to(@post, :notice => "Your post was created successfully.")
  	else
  		render :action => "new"
  	end
  end

  def edit
    check_login
  	@post = Post.find(params[:id])
    unless @post.user_id == current_user.id
      redirect_to @post, :error => "You're not the owner of this post."
    end
    @category_list = Category.all
  end

  def update
  	@post = Post.find(params[:id])
    params[:post][:categories].delete("")
    params[:post][:categories].map! {|category| Category.find(category)}
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

  def upvote
    check_login
    @post = Post.find(params[:id])
    @post.votes << Vote.new(:user_id => session[:user], :vote => 1)
    respond_to do |format|
      format.js
    end
  end

  def downvote
    check_login
    @post = Post.find(params[:id])
    @post.votes << Vote.new(:user_id => session[:user], :vote => -1)
    respond_to do |format|
      format.js
    end
  end
end
