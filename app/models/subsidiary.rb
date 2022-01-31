# frozen_string_literal: true

class Subsidiary < ApplicationRecord
  has_many :rental_prices, dependent: :destroy
  has_one :address, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :address
  validates :name, presence: true
  validates :cnpj, presence: true

  def sub_rental_prices
    RentalPrice.where(subsidiary: self).last(Category.all.count)
  end
end
