# frozen_string_literal: true

# Add score to review and associate with a peer_eval, a user, and a team
class AddToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :score, :integer
    add_column :reviews, :peer_evaluation_id, :integer
    add_column :reviews, :user_id, :integer
    add_column :reviews, :team_id, :integer
  end
end
