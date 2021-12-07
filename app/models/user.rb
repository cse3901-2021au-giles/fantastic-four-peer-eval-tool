# frozen_string_literal: true

# Model of a user, a user is any person that uses the application.
# They have a name, email, password, and admin_level.
# Users may be members of teams that are part of projects and have reviews which are part of peer_evaluations.
class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  validates :admin_level, presence: true, inclusion: { in: %w[Teacher TA Student System] }

  has_many :memberships
  has_many :teams, through: :memberships
  has_many :projects
  has_many :peer_evaluations
  has_many :reviews

  # Returns the hash digest of the given string.
  def self.digest(string)
    cost = if ActiveModel::SecurePassword.min_cost
             BCrypt::Engine::MIN_COST
           else
             BCrypt::Engine.cost
           end
    BCrypt::Password.create(string, cost: cost)
  end
end
