class PostsController < ApplicationController
	def index
		@posts = Post.all.order('created_at DESC')  #lists post on descending based on created at 
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.save

		if @post.save
			redirect_to @post
		else
			render 'new' #keep content
		end

	end

	def show
		@post = Post.find(params[:id])
	end

	private
		def post_params
			params.require(:post).permit(:title, :body)
		end
end
