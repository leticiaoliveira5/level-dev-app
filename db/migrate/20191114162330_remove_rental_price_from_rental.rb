class RemoveRentalPriceFromRental < ActiveRecord::Migration[6.1]
  def change
    remove_reference :rentals, :rental_price, foreign_key: true
  end
end
