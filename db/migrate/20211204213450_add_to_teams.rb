# frozen_string_literal: true

# Associate a project_id with a team
class AddToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :project_id, :integer
  end
end
