class AddCategoryToCar < ActiveRecord::Migration[6.1]
  def change
    add_reference :cars, :category, foreign_key: true
  end
end
