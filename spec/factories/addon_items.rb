# frozen_string_literal: true

FactoryBot.define do
  factory :addon_item do
    addon { addon }
    registration_number { 'NUMERODEREGISTRO' }
    status { :available }
  end
end
