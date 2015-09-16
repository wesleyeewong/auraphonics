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

ActiveRecord::Schema.define(version: 20150807043633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approves", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "artistname"
    t.string   "trackname"
    t.integer  "bpm"
    t.string   "key"
    t.string   "link"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "completes", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "artistname"
    t.string   "trackname"
    t.integer  "bpm"
    t.string   "key"
    t.string   "link"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "denies", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "artistname"
    t.string   "trackname"
    t.integer  "bpm"
    t.string   "key"
    t.string   "link"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "artistname"
    t.string   "trackname"
    t.integer  "bpm"
    t.string   "key"
    t.string   "link"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.boolean  "is_admin"
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
