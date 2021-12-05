class Team < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    has_many :memberships
    has_many :users, through: :memberships
<<<<<<< HEAD
    has_many :peer_evaluations
    belongs_to :project
=======
    has_many :projects
>>>>>>> master
end
