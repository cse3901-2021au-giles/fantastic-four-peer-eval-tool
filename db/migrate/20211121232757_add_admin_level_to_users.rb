# frozen_string_literal: true

# Add admin_level column to users
class AddAdminLevelToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin_level, :string
  end
end
