class Review < ApplicationRecord
    belongs_to :user
<<<<<<< HEAD
=======
    belongs_to :project
>>>>>>> master
    validates :comment, length: { maximum: 250 }
end
