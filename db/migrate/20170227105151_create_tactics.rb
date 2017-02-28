class CreateTactics < ActiveRecord::Migration[5.0]
  def change
    create_table :tactics do |t|
      t.string :name
      t.timestamps
    end
  end
end
