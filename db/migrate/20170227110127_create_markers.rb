class CreateMarkers < ActiveRecord::Migration[5.0]
  def change
    create_table :markers do |t|
      t.string :name
      t.string :color
      t.string :type

      t.timestamps
    end
  end
end
