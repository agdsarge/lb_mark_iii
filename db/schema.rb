# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_13_201745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deals", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.string "dealer"
    t.string "deck_permutation"
    t.boolean "auction_phase"
    t.string "bid_history"
    t.string "contract_terms"
    t.boolean "contract_ns"
    t.string "dummy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_deals_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.integer "ns_score"
    t.integer "ew_score"
    t.boolean "completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

# Could not dump table "player_games" because of following StandardError
#   Unknown type 'seat_direction' for column 'direction'

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "deals", "games"
  add_foreign_key "player_games", "games"
  add_foreign_key "player_games", "players"
end
