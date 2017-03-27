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

ActiveRecord::Schema.define(version: 20170327083556) do

  create_table "markers", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "sequence_id"
    t.float    "x1"
    t.float    "y1"
    t.float    "x2"
    t.float    "y2"
    t.index ["sequence_id"], name: "index_markers_on_sequence_id"
  end

  create_table "sequences", force: :cascade do |t|
    t.integer  "tactic_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tactic_id"], name: "index_sequences_on_tactic_id"
  end

  create_table "tactics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
