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

ActiveRecord::Schema.define(version: 20160514185043) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "organization_id", limit: 4
    t.string   "email",           limit: 255
    t.string   "password",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string   "street1",    limit: 255
    t.string   "street2",    limit: 255
    t.string   "state",      limit: 255
    t.string   "country",    limit: 255
    t.integer  "zipcode",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "emails", force: :cascade do |t|
    t.integer  "member_id",    limit: 4
    t.string   "subject",      limit: 255
    t.integer  "account_id",   limit: 4
    t.string   "subject_type", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
