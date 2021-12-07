# frozen_string_literal: true

# Add an associated team, user (reviewer), reviewee,
# and a bool to check if the peer eval has been completed by the student
class AddToPeerEvaluations < ActiveRecord::Migration[6.1]
  def change
    add_column :peer_evaluations, :completed, :boolean
    add_column :peer_evaluations, :team_id, :integer
    add_column :peer_evaluations, :user_id, :integer
    add_column :peer_evaluations, :reviewee, :integer
  end
end
