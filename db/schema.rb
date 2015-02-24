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

ActiveRecord::Schema.define(version: 20150224223904) do

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.integer  "cost"
    t.integer  "damage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_classes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "constitution"
    t.integer  "health"
    t.integer  "damage"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.integer  "encumberance"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "lat"
    t.integer  "lng"
    t.string   "terrain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.integer  "health"
    t.integer  "damage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mounts", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.boolean  "flying"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "character_id"
  end

  add_index "mounts", ["character_id"], name: "index_mounts_on_character_id"

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
