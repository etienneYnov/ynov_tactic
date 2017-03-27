class AddSequenceAndCoordinatesToMarkers < ActiveRecord::Migration[5.0]
  def change
    add_reference :markers, :sequence, foreign_key: true
    add_column :markers, :x1, :float
    add_column :markers, :y1, :float
    add_column :markers, :x2, :float
    add_column :markers, :y2, :float
  end
end
