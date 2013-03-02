class Movie < ActiveRecord::Base
  attr_accessible :mpaa_rating, :poster, :runtime, :synopsis, :title, :year
  
  has_many :comments

end
