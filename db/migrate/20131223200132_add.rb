class Add < ActiveRecord::Migration
  def up
    add_index :categories, :name, :unique => true
  end
  def down
    add_index :categories, :name, unique: false
  end
end
