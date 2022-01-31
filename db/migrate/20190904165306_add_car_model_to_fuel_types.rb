class AddCarModelToFuelTypes < ActiveRecord::Migration[6.1]
  def change
    add_reference :fuel_types, :car_model, foreign_key: true
  end
end
