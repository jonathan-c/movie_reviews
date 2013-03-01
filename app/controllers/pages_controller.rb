class PagesController < ApplicationController
  
  def index
  end
  
  def search
    @result = search_for_movie(params[:q].to_s)
  end
  
  private
  
  def search_for_movie(title)
    bf = BadFruit.new("c337mtn76ujsn6m6krkyrdp2")
    bf.movies.search_by_name(title)
  end
end
