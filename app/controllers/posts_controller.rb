class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

  def create
    @data = {title: params[:title], description: params[:description]}
    Post.create(@data)
    redirect_to new_post_path(post: @data )
  end
end