class AddProjectIdToPeerEvaluations < ActiveRecord::Migration[6.1]
  def change
    add_column :peer_evaluations, :project_id, :integer
    add_index :peer_evaluations, :project_id
  end
end
