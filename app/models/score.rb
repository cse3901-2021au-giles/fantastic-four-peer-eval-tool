class Score < ApplicationRecord
    validates :value, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10,  only_integer: true }
    belongs_to :review
end
