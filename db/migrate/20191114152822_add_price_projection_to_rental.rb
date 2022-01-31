class AddPriceProjectionToRental < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :price_projection, :float
  end
end
