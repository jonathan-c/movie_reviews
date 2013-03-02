class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :mpaa_rating
      t.integer :runtime
      t.string :synopsis
      t.string :poster

      t.timestamps
    end
  end
end
