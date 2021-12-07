# frozen_string_literal: true

# Remove score categories and scores
class RemoveUnused < ActiveRecord::Migration[6.1]
  def change
    drop_table :score_categories
    drop_table :scores
  end
end
