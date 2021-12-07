# frozen_string_literal: true

# Create scores with a value and a timestamp
class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.integer :value

      t.timestamps
    end
  end
end
