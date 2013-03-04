class Movie < ActiveRecord::Base
  attr_accessible :mpaa_rating, :poster, :runtime, :synopsis, :title, :year, :critics_score
  
  has_many :comments
  
  def rotten?
    self.critics_score > 60 ? false : true
  end
  
  def fresh?
    self.critics_score > 60 ? true : false
  end

end
