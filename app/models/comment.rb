class Comment < ActiveRecord::Base
  attr_accessible :critic, :date, :publication, :text, :url
  
  belongs_to :movie
end
