class CreateRingBearerTable < ActiveRecord::Migration[5.0]
  def change
    create_table :ring_bearers do |t|
      t.integer :character_id
      t.integer :ring_id
      t.string :date_captured
      t.string :date_lost
    end
  end
end
