class DropCurrentBearerAndDeletedFromRingBearerTableAddDeletedToRingTable < ActiveRecord::Migration[5.0]
  def change
    add_column(:rings, :deleted, :string)
    remove_column :ring_bearers, :current_bearer
    remove_column :ring_bearers, :deleted
  end
end
