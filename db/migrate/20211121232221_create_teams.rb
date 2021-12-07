# frozen_string_literal: true

# Create teams with a name
class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name

      t.timestamps
    end
  end
end
