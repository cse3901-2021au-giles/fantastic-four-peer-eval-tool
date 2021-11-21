class Project < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    has_many :peer_evaluations
end
