# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Routing', type: :routing do
  describe 'Health Checks' do
    it 'routes to #index for health check' do
      expect(get: '/health_check').to route_to('health_checks#index')
    end
  end

  it 'does not route to a non-existing route' do
    expect(get: '/non_existing_route').not_to be_routable
  end
end
