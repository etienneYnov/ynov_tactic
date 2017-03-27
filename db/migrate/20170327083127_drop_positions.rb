class DropPositions < ActiveRecord::Migration[5.0]
  def up
    drop_table :positions
  end
end
