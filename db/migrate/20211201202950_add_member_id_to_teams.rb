class AddMemberIdToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :member_id, :integer
    add_index :teams, :member_id
  end
end
