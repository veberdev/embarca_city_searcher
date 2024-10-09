# frozen_string_literal: true

# HealthChecksController handles health check actions/endpoints to monitor the application's status.
class HealthChecksController < ApplicationController
  def index
    render json: { status: 'ok' }, status: :ok
  end
end
