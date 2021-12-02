class Review < ApplicationRecord
    belongs_to :user
    belongs_to :project
    validates :comment, length: { maximum: 250 }
end
