# frozen_string_literal: true

class Category < ApplicationRecord
  validates :name, :daily_rate, presence: true
  has_many :rental_prices, dependent: :destroy
  has_many :car_models, dependent: :destroy
  has_many :cars, through: :car_models
  has_many :insurances, dependent: :destroy

  def description
    "Categoria #{name}"
  end
end
