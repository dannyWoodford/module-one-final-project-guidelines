class CreateRingTable < ActiveRecord::Migration[5.0]
  def change
    create_table :rings do |t|
      t.string :name
      t.string :maker
      t.string :power
      t.string :alignment
      t.string :location
      t.string :creation_date
    end
  end
end
