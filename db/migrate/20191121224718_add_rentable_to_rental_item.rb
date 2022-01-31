class AddRentableToRentalItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :rental_items, :rentable, polymorphic: true
  end
end
