# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!, execpt: [:index]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)

    if @post.persisted?
      flash[:notice] = 'Your post was successfully created'
      redirect_to posts_path
    else
      flash[:alert] = 'Invalid Title or Text.'
      redirect_to new_post_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
