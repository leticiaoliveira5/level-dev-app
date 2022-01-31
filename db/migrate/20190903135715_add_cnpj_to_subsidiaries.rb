class AddCnpjToSubsidiaries < ActiveRecord::Migration[6.1]
  def change
    add_column :subsidiaries, :cnpj, :string
  end
end
