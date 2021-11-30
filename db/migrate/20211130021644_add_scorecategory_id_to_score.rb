class AddScorecategoryIdToScore < ActiveRecord::Migration[6.1]
  def change
    add_column :scores, :scorecategory_id, :integer
    add_index :scores, :scorecategory_id
  end
end
