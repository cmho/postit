require 'pry'
class CommentsController < ApplicationController
	def show

	end

	def new

	end

	def create
		@comment = Comments.new(:user_id => params['comments'][:user_id], :title => params['comments'][:title], :content => params['comments'][:content], :post_id => params['comments'][:post_id])

		if @comment.save
			@post = Post.find(params[:post_id])
			redirect_to(@post, :notice => "Your comment was posted successfully.")
		else
			redirect_to(@post, :error => "There was an error posting your comment.")
		end
	end

	def destroy

	end

	def edit
	
	end
end