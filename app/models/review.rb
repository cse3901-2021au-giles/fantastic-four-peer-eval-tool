# frozen_string_literal: true

# Model of a review, a review connects a score and a comment to a user and peer evaluation
class Review < ApplicationRecord
  belongs_to :peer_evaluation
  belongs_to :user
  validates :comment, length: { maximum: 250 }
  validates :score, presence: true
end
