class Review < ApplicationRecord
    belongs_to :peer_evaluation
    belongs_to :user
    has_many :scores
    validates :comment, length: { maximum: 250 }
end
