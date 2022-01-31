# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    name { 'MyString' }
    daily_rate { 50.0 }
  end
end
