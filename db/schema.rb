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

ActiveRecord::Schema.define(version: 20160514101237) do

  create_table "deai_user_sexes", force: :cascade do |t|
    t.integer  "deai_user_id", null: false
    t.integer  "sex_id",       null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "deai_users", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "icon_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "deai_users", ["name"], name: "index_deai_users_on_name", unique: true

  create_table "guchi_users", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "icon_id",    null: false
    t.integer  "sex_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "guchi_users", ["icon_id"], name: "index_guchi_users_on_icon_id"
  add_index "guchi_users", ["name"], name: "index_guchi_users_on_name", unique: true
  add_index "guchi_users", ["sex_id"], name: "index_guchi_users_on_sex_id"

  create_table "guchis", force: :cascade do |t|
    t.string   "content",       null: false
    t.integer  "guchi_user_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "guchis", ["guchi_user_id"], name: "index_guchis_on_guchi_user_id"

  create_table "icons", force: :cascade do |t|
    t.string   "name",       null: false
    t.text     "value",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.string   "content",                       null: false
    t.boolean  "is_guching",                    null: false
    t.integer  "guchi_id",                      null: false
    t.integer  "guchi_user_id",                 null: false
    t.integer  "deai_user_id",                  null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "read",          default: false, null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
