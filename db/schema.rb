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

ActiveRecord::Schema.define(version: 2021_01_02_043242) do

  create_table "matches", force: :cascade do |t|
    t.string "name1"
    t.string "name2"
    t.string "url"
    t.integer "round"
    t.integer "order"
    t.string "tournament"
    t.integer "game1"
    t.integer "game2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "year"
    t.string "team1"
    t.string "team2"
    t.integer "teams"
    t.integer "score1"
    t.integer "score2"
  end

  create_table "rallies", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img"
  end

end
