# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Routing to Cities', type: :routing do
  it 'routes /cities/search to cities#search' do
    expect(get: '/cities/search').to route_to(controller: 'cities', action: 'search')
  end
end
