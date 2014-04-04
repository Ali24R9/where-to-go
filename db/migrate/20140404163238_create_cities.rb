class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
    end
    create_table :categories do |t|
      t.string :name
    end
    create_table :ratings do |t|
      t.integer :rate
      t.integer :city_id
      t.integer :category_id
    end
    create_table :recommendations do |t|
      t.string :user_name
      t.string :description
      t.belongs_to :ratings
    end
  end
end
