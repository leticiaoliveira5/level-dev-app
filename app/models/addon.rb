# frozen_string_literal: true

class Addon < ApplicationRecord
  has_one_attached :photo
  has_many :addon_items, dependent: :destroy
  validates :name, :description, presence: true
  def first_available_item
    addon_items.find_by(status: :available)
  end
end
