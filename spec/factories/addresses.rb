# frozen_string_literal: true

FactoryBot.define do
  factory :address do
    street { 'Rua da Consolação' }
    number { '100' }
    complement { ' conj. 66' }
    neighborhood { 'Cerqueira César' }
    city { 'São Paulo' }
    state { 'SP' }
  end
end
