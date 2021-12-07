# frozen_string_literal: true

# Model of a team, a team is a named group of users that are part of a project
class Team < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  has_many :memberships
  has_many :users, through: :memberships
  has_many :peer_evaluations
  belongs_to :project
end
