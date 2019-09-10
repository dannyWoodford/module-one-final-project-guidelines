class AddColumnsToRingBearerTable < ActiveRecord::Migration[5.0]
  def change
    add_column(:ring_bearers, :current_bearer, :string)
    add_column(:ring_bearers, :destroyed?, :string)
  end
end
