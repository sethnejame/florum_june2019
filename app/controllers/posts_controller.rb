class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
 
    if @post.persisted?
      flash[:notice] = 'Your post was successfully created'
      redirect_to posts_path
    else
      flash[:alert] =  'Invalid Title or Text.'
      redirect_to new_post_path 
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
