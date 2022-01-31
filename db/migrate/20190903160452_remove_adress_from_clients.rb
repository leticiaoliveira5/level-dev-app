class RemoveAdressFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_reference :clients, :adress, foreign_key: true
  end
end
