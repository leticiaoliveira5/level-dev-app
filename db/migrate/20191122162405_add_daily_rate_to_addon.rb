class AddDailyRateToAddon < ActiveRecord::Migration[6.1]
  def change
    add_column :addons, :daily_rate, :float
  end
end
