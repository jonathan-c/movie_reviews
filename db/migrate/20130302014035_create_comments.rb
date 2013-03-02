class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :url
      t.string :critic
      t.string :publication
      t.string :date
      t.string :text

      t.timestamps
    end
  end
end
