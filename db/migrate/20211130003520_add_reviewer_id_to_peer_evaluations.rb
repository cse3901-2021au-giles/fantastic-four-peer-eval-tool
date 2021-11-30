class AddReviewerIdToPeerEvaluations < ActiveRecord::Migration[6.1]
  def change
    add_column :peer_evaluations, :reviewer_id, :integer
    add_index :peer_evaluations, :reviewer_id
  end
end
