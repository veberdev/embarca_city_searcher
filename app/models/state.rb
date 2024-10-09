# frozen_string_literal: true

# This model represents a state and its associations.
class State < ApplicationRecord
  has_many :cities, dependent: :destroy
end
