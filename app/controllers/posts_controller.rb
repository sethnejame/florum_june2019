# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!, execpt: [:index]
  before_action :post_owner, only: [:destroy]

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

  def post_owner
    @post = Post.find(params[:id])
    unless @post.user.id == current_user.id
     flash[:notice] = 'Access denied as you are not owner of this post'
     redirect_to posts_path
    end
   end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
