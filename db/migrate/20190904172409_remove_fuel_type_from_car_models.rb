class RemoveFuelTypeFromCarModels < ActiveRecord::Migration[6.1]
  def change
    remove_column :car_models, :fuel_type, :string
  end
end
