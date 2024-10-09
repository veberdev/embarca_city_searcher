# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HealthChecksController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it 'returns a JSON response with status ok' do
      get :index
      json_response = JSON.parse(response.body)
      expect(json_response).to eq({ 'status' => 'ok' })
    end
  end
end
