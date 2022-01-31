class RemoveCategoryFromCarModels < ActiveRecord::Migration[6.1]
  def change
    remove_column :car_models, :category, :string
  end
end
