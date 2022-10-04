# frozen_string_literal: true

FactoryBot.define do
  factory :service do
    name { 'Standard' }
    code { 'standard' }
    association :carrier
  end
end
