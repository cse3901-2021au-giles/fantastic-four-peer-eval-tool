# frozen_string_literal: true

# Model of a membership, a membership is a connection between users and teams
class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :team
end
