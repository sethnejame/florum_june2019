class PostsController < ApplicationController
    def new
        @post = Post.new
    end
    
    def show
        @post = Post.find(params[:id])
    end

    def create
        post = Post.create(post_params)
        if post.persisted?
          flash[:notice] = 'Your post was succefully created'
          redirect_to posts_path(post)
        else
          flash[:alert] =  post.errors.full_messages.to_sentence
          redirect_to new_post_path 
        end
    end

    private
        def post_params
            params.require(:post).permit(:title, :text)
        end
end
