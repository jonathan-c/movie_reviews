class CommentsController < ApplicationController
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    redirect_to result_path
  end
end
