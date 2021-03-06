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

ActiveRecord::Schema.define(version: 20140115155519) do

  create_table "fighters", force: true do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "weight"
    t.date     "date_of_birth"
    t.string   "team_affiliation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.integer  "user_id"
    t.integer  "rooster_fighter_id"
    t.integer  "light_feather_fighter_id"
    t.integer  "feather_fighter_id"
    t.integer  "light_fighter_id"
    t.integer  "middle_fighter_id"
    t.integer  "medium_heavy_fighter_id"
    t.integer  "heavy_fighter_id"
    t.integer  "super_heavy_fighter_id"
    t.integer  "ultra_heavy_fighter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "tournament_score"
    t.integer  "total_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["name"], name: "index_users_on_name", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
