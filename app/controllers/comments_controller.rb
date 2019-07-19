class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = post.comments.create(body: comment_params[:body], user_id: current_user.id)
    if comment.persisted?
      flash[:notice] = 'Your comment was successfully created'
    else
      flash[:alert] = 'Your comment must have content'
    end
    redirect_to post_path(post)
  end
    
  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end