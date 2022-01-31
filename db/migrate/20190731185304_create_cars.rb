class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.references :car_model, foreign_key: true
      t.string :cor
      t.string :placa
      t.integer :car_km

      t.timestamps
    end
  end
end
