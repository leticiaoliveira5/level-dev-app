class CreateCarModels < ActiveRecord::Migration[6.1]
  def change
    create_table :car_models do |t|
      t.string :name
      t.string :year
      t.references :manufacture, foreign_key: true
      t.text :car_options

      t.timestamps
    end
  end
end
