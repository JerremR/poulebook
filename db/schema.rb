# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_28_101010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "status", default: "En attente"
    t.date "start_date"
    t.date "end_date"
    t.float "total_price"
    t.bigint "user_id"
    t.bigint "chicken_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chicken_id"], name: "index_bookings_on_chicken_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "chickens", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "species"
    t.string "gender"
    t.float "price"
    t.string "photo"
    t.text "presentation"
    t.string "address"
    t.bigint "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["owner_id"], name: "index_chickens_on_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "fullname"
    t.string "avatar"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "chickens"
  add_foreign_key "bookings", "users"
  add_foreign_key "chickens", "users", column: "owner_id"
end
