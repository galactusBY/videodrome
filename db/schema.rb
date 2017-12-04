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

ActiveRecord::Schema.define(version: 20171116232914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "address", null: false
    t.integer "dl_number", null: false
    t.integer "overdue_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.string "genre", null: false
    t.string "format", null: false
    t.boolean "status", null: false
    t.integer "year", null: false
    t.integer "rental_cost", null: false
    t.integer "barcode", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.integer "user_id"
    t.integer "customer_id"
    t.integer "movie_id"
    t.date "rental_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "password_hash", null: false
    t.integer "employee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
