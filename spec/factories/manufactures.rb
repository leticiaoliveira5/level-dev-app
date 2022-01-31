# frozen_string_literal: true

FactoryBot.define do
  factory :manufacture do
    name { Faker::Vehicle.manufacture }
  end
end
