# frozen_string_literal: true

# Defines the base for all models
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
