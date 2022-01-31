class RemovePlacaFromCar < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :placa, :string
  end
end
