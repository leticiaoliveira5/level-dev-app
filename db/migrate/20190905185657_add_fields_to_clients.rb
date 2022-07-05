class AddFieldsToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :cpf, :string
    add_column :clients, :cnpj, :string
    add_column :clients, :trade_name, :string
  end
end
