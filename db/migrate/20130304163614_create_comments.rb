class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :critic
      t.string :date
      t.string :publication
      t.string :text
      t.string :url
      t.integer :movie_id

      t.timestamps
    end
  end
end
