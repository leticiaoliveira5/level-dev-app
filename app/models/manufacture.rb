# frozen_string_literal: true

class Manufacture < ApplicationRecord
  validates :name, presence: true
end
