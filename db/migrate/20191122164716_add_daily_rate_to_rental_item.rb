class AddDailyRateToRentalItem < ActiveRecord::Migration[6.1]
  def change
    add_column :rental_items, :daily_rate, :float
  end
end
