class CommentsController < ApplicationController
  
  def index
    
  end
  
  def create
    @movie = Movie.find_by_title(session[:search])
    @comment = @movie.comments.create(params[:text])
    if @comment.save
      flash[:success] = "Review added!"
      redirect_to result_path
    end
  end
  
  def destroy
    
  end
end
