# frozen_string_literal: true

FactoryBot.define do
  factory :city do
    name { 'Curitiba' }
    association :state
  end
end
