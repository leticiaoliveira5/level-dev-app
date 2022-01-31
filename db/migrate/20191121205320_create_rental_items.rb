class CreateRentalItems < ActiveRecord::Migration[6.1]
  def change
    create_table :rental_items do |t|
      t.references :rental, foreign_key: true

      t.timestamps
    end
  end
end
