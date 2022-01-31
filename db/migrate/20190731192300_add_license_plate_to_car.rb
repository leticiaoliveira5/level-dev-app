class AddLicensePlateToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :license_plate, :string
  end
end
