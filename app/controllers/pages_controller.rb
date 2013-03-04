class PagesController < ApplicationController
  
  def index
  end
  
  def search
    session[:search] = params[:q].to_s
    redirect_to result_path
  end
  
  def result
    search_query = search_for_movie(session[:search])
    if search_query.empty?
      flash[:notice] = "This movie does not exist. Please try a different movie."
      return redirect_to root_path
    end
    if !search_query.empty? && Movie.find_by_title(search_query[0].name).nil?
      save_movie(search_query) 
      save_reviews(search_query)
    end
    @result ||= Movie.find_by_title(search_query[0].name)
    @comment = @result.comments
  end
  
  
  def create
    search_query = search_for_movie(session[:search])
    @movie = Movie.find_by_title(search_query[0].name)
    @comment = @movie.comments.create(text: params[:comment][:text], critic: params[:critic], date: params[:date])
    if @comment.save
      flash[:success] = "Review added!"
      redirect_to result_path
    else
      redirect_to result_path
    end
  end
  
  private
  
  def search_for_movie(title)
    bf = BadFruit.new("c337mtn76ujsn6m6krkyrdp2")
    bf.movies.search_by_name(title)
  end
  
  def save_movie(result)
    create_hash = {title: result[0].name, poster: result[0].posters.original, runtime: result[0].runtime, synopsis: result[0].synopsis, year: result[0].year, mpaa_rating: result[0].mpaa_rating, critics_score: result[0].scores.critics_score}
    Movie.create(create_hash)
  end
  
  def save_reviews(result)
    movie = Movie.find_by_title(result[0].name)
    result[0].reviews.each do |review|
      create_hash = {critic: review.critic, date: review.date, publication: review.publication, url: review.links["review"]}
      movie.comments.create(create_hash)
    end
  end
  
end