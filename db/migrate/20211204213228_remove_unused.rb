class RemoveUnused < ActiveRecord::Migration[6.1]
  def change
    drop_table :score_categories
    drop_table :scores
  end
end
