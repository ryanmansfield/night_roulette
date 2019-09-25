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

ActiveRecord::Schema.define(version: 2019_09_25_165523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "venue_id"
    t.bigint "user_id"
    t.date "date"
    t.time "time"
    t.string "uber_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "passengers"
    t.string "pickup_time"
    t.string "status", default: "pending"
    t.string "pickup_location"
    t.float "longitude"
    t.float "latitude"
    t.string "license_plate"
    t.string "driver_name"
    t.string "price"
    t.string "eta"
    t.string "token"
    t.index ["user_id"], name: "index_bookings_on_user_id"
    t.index ["venue_id"], name: "index_bookings_on_venue_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "location"
    t.string "uber_info"
    t.string "preferences", default: [], array: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "characteristics", default: [], array: true
    t.string "location"
    t.float "price"
    t.float "rating"
    t.string "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.float "latitude"
    t.float "longitude"
    t.string "venue_type"
    t.string "cool_facts", default: [], array: true
    t.integer "times_rated", default: 5
  end

end
