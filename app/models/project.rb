class Project < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
<<<<<<< HEAD
    has_many :teams
=======
    has_many :reviews
    has_one :team
>>>>>>> master
end
