# frozen_string_literal: true

# Create peer evaluations with just a timestamp
class CreatePeerEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :peer_evaluations, &:timestamps
  end
end
