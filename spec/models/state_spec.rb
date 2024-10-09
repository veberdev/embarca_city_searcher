# frozen_string_literal: true

require 'rails_helper'

RSpec.describe State, type: :model do
  describe 'associations' do
    it { should have_many(:cities).dependent(:destroy) }
  end

  describe 'destroying a state' do
    let!(:parana) { create(:state) }
    let!(:curitiba) { parana.cities.create! }
    let!(:santa_catarina) { parana.cities.create!(name: 'Santa Catarina') }
    it 'destroys associated cities when the state is deleted' do
      expect do
        parana.destroy
      end.to change(City, :count).by(-2)
    end
  end
end
