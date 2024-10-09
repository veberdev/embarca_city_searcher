# frozen_string_literal: true

require 'rails_helper'

RSpec.describe State, type: :model do
  describe 'associations' do
    it { should have_many(:cities).dependent(:destroy) }
  end
end
