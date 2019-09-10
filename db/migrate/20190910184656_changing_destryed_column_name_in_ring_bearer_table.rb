class ChangingDestryedColumnNameInRingBearerTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :ring_bearers, :destroyed?, :deleted
  end
end
