class AddProjectIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :project_id, :integer
    add_index :reviews, :project_id
  end
end
