class ChangeTextDataType < ActiveRecord::Migration
  def up
    change_column :comments, :text, :text, :limit => nil
  end

  def down
  end
end
