class AddDailyRatesToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :daily_rate, :float
    add_column :categories, :car_insurante, :float
    add_column :categories, :third_party_insurance, :float
  end
end
