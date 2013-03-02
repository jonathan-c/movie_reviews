class PagesController < ApplicationController
  
  def index
  end
  
  def search
    session[:search] = params[:q].to_s
    redirect_to result_path
  end
  
  def result
    @result ||= search_for_movie(session[:search])
  end
  
  private
  
  def search_for_movie(title)
    bf = BadFruit.new("c337mtn76ujsn6m6krkyrdp2")
    bf.movies.search_by_name(title)
  end
  
end