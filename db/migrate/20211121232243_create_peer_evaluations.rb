class CreatePeerEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :peer_evaluations do |t|

      t.timestamps
    end
  end
end
