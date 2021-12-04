class PeerEvaluation < ApplicationRecord
    belongs_to :user
    has_many :reviews
    belongs_to :team
end
