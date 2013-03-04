class ChangeSynopsisDataType < ActiveRecord::Migration
  def up
    change_column :movies, :synopsis, :text, :limit => nil
  end

  def down
  end
end
