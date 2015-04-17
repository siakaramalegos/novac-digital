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

ActiveRecord::Schema.define(version: 20150417012051) do

  create_table "filmmakers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string   "owner_name"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "project_filmmakers", id: false, force: :cascade do |t|
    t.integer "projects_id"
    t.integer "filmmakers_id"
  end

  add_index "project_filmmakers", ["filmmakers_id"], name: "index_project_filmmakers_on_filmmakers_id"
  add_index "project_filmmakers", ["projects_id"], name: "index_project_filmmakers_on_projects_id"

  create_table "projects", force: :cascade do |t|
    t.integer  "serial_id"
    t.integer  "owner_id"
    t.string   "title"
    t.text     "description"
    t.text     "production_notes"
    t.datetime "production_date"
    t.integer  "production_year"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "projects", ["owner_id"], name: "index_projects_on_owner_id"
  add_index "projects", ["serial_id"], name: "index_projects_on_serial_id"

  create_table "serials", force: :cascade do |t|
    t.string   "series_title"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
