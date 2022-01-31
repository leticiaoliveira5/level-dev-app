class RemoveCarInsuranteFromCategory < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories, :car_insurante, :float
  end
end
