class RemovePricesFromRentalPrice < ActiveRecord::Migration[6.1]
  def change
    remove_column :rental_prices, :daily_car_insurance, :string
    remove_column :rental_prices, :daily_thid_party_insurance, :string
  end
end
