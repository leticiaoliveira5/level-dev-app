class AddStatusToAddonItem < ActiveRecord::Migration[6.1]
  def change
    add_column :addon_items, :status, :integer
  end
end
