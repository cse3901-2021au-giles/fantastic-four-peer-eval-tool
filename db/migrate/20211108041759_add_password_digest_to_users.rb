# frozen_string_literal: true

# Users now have a password (saved as password_digest)
class AddPasswordDigestToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password_digest, :string
  end
end
