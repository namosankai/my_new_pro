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

ActiveRecord::Schema.define(version: 2020_09_29_083622) do

  create_table "costomers", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.text "name"
    t.integer "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "trader_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "price"
    t.integer "cost"
    t.integer "taxin"
    t.index ["trader_id"], name: "index_items_on_trader_id"
  end

  create_table "nitems", force: :cascade do |t|
    t.text "name"
    t.integer "price"
    t.integer "cost"
    t.integer "taxin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "trader_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "date"
    t.integer "group"
    t.integer "people"
    t.text "feed"
    t.text "report_txt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer "sele"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "item_id"
    t.integer "expence_id"
  end

  create_table "salings", force: :cascade do |t|
    t.integer "target"
    t.integer "resalt"
    t.integer "cash"
    t.integer "credit"
    t.integer "gift"
    t.integer "lunch"
    t.integer "night"
    t.integer "takeout"
    t.integer "coupon"
    t.integer "today_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "traders", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "food"
    t.integer "drink"
    t.integer "other"
  end

end
