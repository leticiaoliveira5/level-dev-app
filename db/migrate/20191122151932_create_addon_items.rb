class CreateAddonItems < ActiveRecord::Migration[6.1]
  def change
    create_table :addon_items do |t|
      t.references :addon, foreign_key: true
      t.string :registration_number

      t.timestamps
    end
  end
end
