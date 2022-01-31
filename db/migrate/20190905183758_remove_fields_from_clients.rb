class RemoveFieldsFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :cnpj, :string
    remove_column :clients, :cpf, :string
  end
end
