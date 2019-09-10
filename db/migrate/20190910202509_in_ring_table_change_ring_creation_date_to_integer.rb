class InRingTableChangeRingCreationDateToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :rings, :creation_date, :integer
  end
end
