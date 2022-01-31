class AddColorToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :colo, :string
  end
end
