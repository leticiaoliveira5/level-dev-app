class RemoveCategoryFromCar < ActiveRecord::Migration[6.1]
  def change
    remove_reference :cars, :category, foreign_key: true
  end
end
