class Team < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    has_many :memberships
    has_many :users, through: :memberships
    has_many :peer_evaluations
    belongs_to :project
end
