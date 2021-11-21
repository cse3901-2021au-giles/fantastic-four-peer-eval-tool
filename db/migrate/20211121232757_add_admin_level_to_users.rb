class AddAdminLevelToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin_level, :string
  end
end
