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

ActiveRecord::Schema.define(version: 2021_01_12_153152) do

  create_table "boards", force: :cascade do |t|
    t.integer "player_turn"
    t.integer "board_num"
    t.integer "sq_1"
    t.integer "sq_2"
    t.integer "sq_3"
    t.integer "sq_4"
    t.integer "sq_5"
    t.integer "sq_6"
    t.integer "sq_7"
    t.integer "sq_8"
    t.integer "sq_9"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer "turn"
    t.integer "win"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "board_num"
  end

end
