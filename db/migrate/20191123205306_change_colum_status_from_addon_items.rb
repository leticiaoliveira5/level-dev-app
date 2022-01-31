class ChangeColumStatusFromAddonItems < ActiveRecord::Migration[6.1]
  def change
    change_column_default :addon_items, :status, 0
  end
end
