class CreateTricks < ActiveRecord::Migration[6.0]
  def change
    create_table :tricks do |t|
      t.references :deal, null: false, foreign_key: true
      t.string :first_player
      t.string :winner
      t.string :north
      t.string :east
      t.string :south
      t.string :west

      t.timestamps
    end
  end
end
