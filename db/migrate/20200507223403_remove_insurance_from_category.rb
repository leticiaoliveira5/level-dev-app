class RemoveInsuranceFromCategory < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories, :third_party_insurance, :string
    remove_column :categories, :car_insurance, :string
  end
end
