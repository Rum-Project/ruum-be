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

ActiveRecord::Schema.define(version: 2022_03_24_224725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.datetime "date"
    t.bigint "musician_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["musician_id"], name: "index_bookings_on_musician_id"
  end

  create_table "hosts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musicians", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_bookings", force: :cascade do |t|
    t.datetime "date"
    t.bigint "room_id"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_room_bookings_on_booking_id"
    t.index ["room_id"], name: "index_room_bookings_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.text "details"
    t.text "photo"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.float "price"
    t.string "amenities"
    t.string "instruments"
    t.integer "capacity"
    t.bigint "host_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_rooms_on_host_id"
  end

  add_foreign_key "bookings", "musicians"
  add_foreign_key "room_bookings", "bookings"
  add_foreign_key "room_bookings", "rooms"
  add_foreign_key "rooms", "hosts"
end
