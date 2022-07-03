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

ActiveRecord::Schema[7.0].define(version: 2022_07_03_154803) do
  create_table "whish_lists", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wish_items", force: :cascade do |t|
    t.integer "wish_list_id", null: false
    t.text "description"
    t.text "link"
    t.boolean "completed"
    t.datetime "completed_at"
    t.integer "wishlist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wish_list_id"], name: "index_wish_items_on_wish_list_id"
    t.index ["wishlist_id"], name: "index_wish_items_on_wishlist_id"
  end

  add_foreign_key "wish_items", "wish_lists"
  add_foreign_key "wish_items", "wishlists"
end
