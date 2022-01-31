class AddCategoryToCarModels < ActiveRecord::Migration[6.1]
  def change
    add_reference :car_models, :category, foreign_key: true
  end
end
