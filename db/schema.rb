# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_10_30_213852) do
  create_table "budget_categories", force: :cascade do |t|
    t.string "name"
    t.float "budgeted_amount"
    t.integer "trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_budget_categories_on_trip_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "note"
    t.float "amount"
    t.integer "trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "budget_category_id", null: false
    t.index ["budget_category_id"], name: "index_transactions_on_budget_category_id"
    t.index ["trip_id"], name: "index_transactions_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "budget_categories", "trips"
  add_foreign_key "transactions", "budget_categories"
  add_foreign_key "transactions", "trips"
end
