class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :ns_score
      t.integer :ew_score
      t.boolean :completed

      t.timestamps
    end
  end
end
