# frozen_string_literal: true

# Create projects with a name and a timestamp
class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name

      t.timestamps
    end
  end
end
