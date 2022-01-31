class AddReservationCodeToRental < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :reservation_code, :string
  end
end
