class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.references :game, null: false, foreign_key: true
      t.string :dealer
      t.string :deck_permutation
      t.boolean :auction_phase
      t.string :bid_history
      t.string :contract_terms
      t.boolean :contract_ns
      t.string :dummy

      t.timestamps
    end
  end
end
