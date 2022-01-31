class AddCarInsuranceToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :car_insurance, :float
  end
end
