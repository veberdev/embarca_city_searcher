# frozen_string_literal: true

require 'test_helper'

class CitiesControllerTest < ActionDispatch::IntegrationTest
  test 'should get search' do
    get cities_search_url
    assert_response :success
  end
end
