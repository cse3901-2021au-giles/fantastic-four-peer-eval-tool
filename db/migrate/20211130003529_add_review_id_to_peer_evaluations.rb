class AddReviewIdToPeerEvaluations < ActiveRecord::Migration[6.1]
  def change
    add_column :peer_evaluations, :review_id, :integer
    add_index :peer_evaluations, :review_id
  end
end
