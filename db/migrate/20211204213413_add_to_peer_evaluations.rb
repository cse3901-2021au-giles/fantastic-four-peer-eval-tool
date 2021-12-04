class AddToPeerEvaluations < ActiveRecord::Migration[6.1]
  def change
    add_column :peer_evaluations, :completed, :boolean
    add_column :peer_evaluations, :team_id, :integer
    add_column :peer_evaluations, :user_id, :integer
    add_column :peer_evaluations, :reviewee, :integer
  end
end
