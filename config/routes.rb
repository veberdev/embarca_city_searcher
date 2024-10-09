# frozen_string_literal: true

Rails.application.routes.draw do
  root 'cities#search'

  get 'cities/search', to: 'cities#search'
  get 'health_check', to: 'health_checks#index'
end
