# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength

require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
  let!(:parana) { create(:state) }
  let!(:santa_catarina) { create(:state, name: 'Santa Catarina') }
  let!(:rio_grande_do_sul) { create(:state, name: 'Rio Grande do Sul') }

  let!(:city1) { create(:city, state: parana) }
  let!(:city2) { create(:city, name: 'Londrina', state: parana) }
  let!(:city3) { create(:city, name: 'Maringá', state: parana) }

  let!(:city4) { create(:city, name: 'Florianópolis', state: santa_catarina) }
  let!(:city5) { create(:city, name: 'Joinville', state: santa_catarina) }

  let!(:city6) { create(:city, name: 'Porto Alegre', state: rio_grande_do_sul) }

  describe 'GET #search' do
    context 'when accesing/reload the page' do
      it 'return all matching cities from the first state' do
        get :search
        expect(assigns(:cities)).to include(city1, city2, city3)
      end

      it 'returns success status' do
        get :search
        expect(response).to be_successful
      end
    end

    context 'when searching for cities' do
      it 'returns success status' do
        get :search, params: { state: 'Paraná', name: 'Curit' }
        expect(response).to be_successful
      end

      it 'returns matching cities' do
        get :search, params: { state: 'Paraná', name: 'Curit' }
        expect(assigns(:cities)).to include(city1)
      end

      it 'returns multiple matching cities' do
        get :search, params: { state: 'Paraná', name: 'rin' }
        expect(assigns(:cities)).to include(city2, city3)
      end

      it 'returns no cities for non-existing city' do
        get :search, params: { state: 'Paraná', name: 'NonExisting' }
        expect(assigns(:cities)).to be_empty
      end

      it 'handles case insensitivity in searches' do
        get :search, params: { state: 'Santa Catarina', name: 'FLORIANÓPOLIS' }
        expect(assigns(:cities)).to include(city4)
      end

      it 'returns no cities for incorrect state' do
        get :search, params: { state: 'Santa Catarina', name: 'Curitiba' }
        expect(assigns(:cities)).to be_empty
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
