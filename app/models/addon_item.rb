# frozen_string_literal: true

class AddonItem < ApplicationRecord
  enum status: { available: 0, unavailable: 10 }
  belongs_to :addon
end
