class CreateAddons < ActiveRecord::Migration[6.1]
  def change
    create_table :addons do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
