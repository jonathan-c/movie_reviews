class ChangeDataTypeForText < ActiveRecord::Migration
  def up
    change_table :comments do |t|
      t.change :text, :text
    end
  end

  def down
  end
end
