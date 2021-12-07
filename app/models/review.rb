class Review < ApplicationRecord
    belongs_to :peer_evaluation
    belongs_to :user
    validates :comment, length: { maximum: 250 }
    validates :score, presence: true
end
