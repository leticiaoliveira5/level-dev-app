class RemoveSubsidiaryFromAddresses < ActiveRecord::Migration[6.1]
  def change
    remove_reference :addresses, :subsidiary, foreign_key: true
  end
end
