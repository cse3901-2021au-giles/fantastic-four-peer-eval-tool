# frozen_string_literal: true

# Model of a project, a project is a named collection of teams
class Project < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  has_many :teams
end
