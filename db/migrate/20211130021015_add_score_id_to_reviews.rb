class AddScoreIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :score_id, :integer
    add_index :reviews, :score_id
  end
end
