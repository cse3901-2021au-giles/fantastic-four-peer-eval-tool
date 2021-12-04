class Project < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    has_many :teams
end
