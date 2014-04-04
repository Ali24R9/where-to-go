class AddSlug < ActiveRecord::Migration
  def change
    add_column :cities, :slug, :string
    add_column :categories, :slug, :string
    add_column :recommendations, :slug, :string

  end
end
