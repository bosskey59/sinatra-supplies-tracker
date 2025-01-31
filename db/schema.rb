# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20190410005034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "project_supplies", force: :cascade do |t|
    t.integer "project_id"
    t.integer "supply_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string  "name"
    t.string  "project_type"
    t.date    "date"
    t.integer "attendees"
    t.decimal "supplies_budget"
    t.integer "user_id"
  end

  create_table "supplies", force: :cascade do |t|
    t.string  "name"
    t.string  "vendor"
    t.string  "website"
    t.string  "unit_type"
    t.decimal "price_per_unit"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

end
