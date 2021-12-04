class AddToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :score, :integer
    add_column :reviews, :peer_evaluation_id, :integer
    add_column :reviews, :user_id, :integer
    add_column :reviews, :team_id, :integer
  end
end
