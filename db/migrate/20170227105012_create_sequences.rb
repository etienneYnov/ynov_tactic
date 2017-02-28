class CreateSequences < ActiveRecord::Migration[5.0]
  def change
    create_table :sequences do |t|
      t.references :Tactic
      t.string :name

      t.timestamps
    end
  end
end
