# frozen_string_literal: true

class FuelType < ApplicationRecord
  validates :name, presence: true
end
