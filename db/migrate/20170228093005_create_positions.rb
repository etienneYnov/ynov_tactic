class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :name
      t.float :x1
      t.float :y1
      t.float :x2
      t.float :y2

      t.timestamps
    end
  end
end
