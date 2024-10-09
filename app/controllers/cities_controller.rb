# frozen_string_literal: true

# CitiesControllerController handles requests related to city resources.
class CitiesController < ApplicationController
  def search
    @cities = fetch_cities
    respond_to do |format|
      format.js
      format.html
    end
  end

  private

  def fetch_cities
    state = State.find_by(name: params[:state])
    if params[:name].present?
      City.where('state_id = ? AND name ILIKE ?', state.id, "%#{params[:name]}%")
    else
      City.where(state_id: State.first.id)
    end
  end
end
