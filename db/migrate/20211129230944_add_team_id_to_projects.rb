class AddTeamIdToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :team_id, :int
    add_index :projects, :team_id
  end
end
