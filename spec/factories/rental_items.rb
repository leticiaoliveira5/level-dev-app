# frozen_string_literal: true

FactoryBot.define do
  factory :rental_item do
    rental { nil }
    car { nil }
  end
end
