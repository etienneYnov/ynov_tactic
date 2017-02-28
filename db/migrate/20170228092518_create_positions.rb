class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string,x1 :name

      t.timestamps
    end
  end
end
