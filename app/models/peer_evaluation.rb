# frozen_string_literal: true

# Model of a peer evaluation, a peer evaluation is a collection of reviews for a user on a team
class PeerEvaluation < ApplicationRecord
  belongs_to :user
  has_many :reviews
  belongs_to :team
end
