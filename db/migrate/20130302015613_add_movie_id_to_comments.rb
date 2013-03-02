class AddMovieIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :movie_id, :foreign_key
  end
end
