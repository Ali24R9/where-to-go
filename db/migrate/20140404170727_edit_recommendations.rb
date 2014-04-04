class EditRecommendations < ActiveRecord::Migration
  def change
    rename_column :recommendations, :ratings_id, :rating_id
  end
end
