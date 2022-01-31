class RemoveCorFromCar < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :cor, :string
  end
end
