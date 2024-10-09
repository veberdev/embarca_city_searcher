# frozen_string_literal: true

# This model represents a city and its associations.
class City < ApplicationRecord
  belongs_to :state
end
