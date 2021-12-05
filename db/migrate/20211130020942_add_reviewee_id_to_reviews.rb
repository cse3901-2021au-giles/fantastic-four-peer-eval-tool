class AddRevieweeIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :reviewee_id, :integer
    add_index :reviews, :reviewee_id
  end
end
