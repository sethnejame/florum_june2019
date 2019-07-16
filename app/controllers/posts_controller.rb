class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.create(post_params)
 
    if @post.persisted?
      flash[:notice] = 'Your post was succefully created'
      redirect_to @post
    else
      redirect_to new_post_path
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
    end
end
