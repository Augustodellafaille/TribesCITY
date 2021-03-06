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

ActiveRecord::Schema.define(version: 20151228110053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.string   "thema"
    t.text     "description"
    t.boolean  "accepted"
    t.integer  "guest_min"
    t.integer  "guest_max"
    t.integer  "price_per_person"
    t.integer  "total_price"
    t.date     "date"
    t.time     "starting_hour"
    t.time     "ending_hour"
    t.string   "city"
    t.string   "zip_code"
    t.string   "street"
    t.string   "number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "host_id"
    t.integer  "guest_id"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "lastname"
    t.string   "firstname"
    t.string   "username"
    t.integer  "age"
    t.string   "phone_number"
    t.text     "biography"
    t.string   "city"
    t.string   "zip_code"
    t.string   "street"
    t.string   "number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["guest_id"], name: "index_users_on_guest_id", using: :btree
  add_index "users", ["host_id"], name: "index_users_on_host_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
