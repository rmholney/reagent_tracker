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

ActiveRecord::Schema.define(version: 20151228013153) do

  create_table "calibrators", force: :cascade do |t|
    t.string   "name"
    t.string   "lot"
    t.date     "expiration"
    t.integer  "box"
    t.integer  "sets"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.integer  "box"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reagents", force: :cascade do |t|
    t.string   "reagent_name"
    t.date     "expiration"
    t.integer  "flex"
    t.integer  "flex_per_box"
    t.integer  "test_per_flex"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lot"
    t.integer  "calibrator_id"
  end

  create_table "techs", force: :cascade do |t|
    t.string   "techname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
