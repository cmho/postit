class CommentsController < ApplicationController
	def show

	end

	def new

	end

	def create
		@comment = Comments.new(:user_id => params['comments'][:user_id], :title => params['comments'][:title], :content => params['comments'][:content], :post_id => params['comments'][:post_id])
		@post = Post.find(params[:post_id])
		if @comment.save
			redirect_to(@post, :notice => "Your comment was posted successfully.")
		else
			redirect_to(@post, :error => "There was an error posting your comment.")
		end
	end

	def destroy

	end

	def edit
		@comment = Comments.find(param[:id])
	end

	def upvote

	end

	def downvote

	end
end