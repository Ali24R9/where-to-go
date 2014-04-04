class DropTables < ActiveRecord::Migration
  def change
    drop_table :cities
    drop_table :categories
    drop_table :ratings
    drop_table :recommendations
  end
end
