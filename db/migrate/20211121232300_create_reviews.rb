# frozen_string_literal: true

# Create reviews with a comment and a timestamp
class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :comment

      t.timestamps
    end
  end
end
