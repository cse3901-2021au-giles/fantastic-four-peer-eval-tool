class Project < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    has_many :reviews
    has_one :team
end
