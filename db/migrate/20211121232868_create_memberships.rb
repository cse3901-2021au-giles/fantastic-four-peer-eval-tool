# frozen_string_literal: true

# Create memberships with a user and team id
class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :team_id

      t.timestamps
    end
  end
end
