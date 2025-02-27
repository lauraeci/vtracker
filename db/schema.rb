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

ActiveRecord::Schema.define(version: 20160515023611) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "organization_id",        limit: 4
    t.string   "email",                  limit: 255,              null: false
    t.string   "password",               limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true, using: :btree
  add_index "accounts", ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true, using: :btree

  create_table "addresses", force: :cascade do |t|
    t.string   "street1",    limit: 255
    t.string   "street2",    limit: 255
    t.string   "state",      limit: 255
    t.string   "country",    limit: 255
    t.integer  "zipcode",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "member_id",  limit: 255
    t.string   "city",       limit: 255
  end

  create_table "donations", force: :cascade do |t|
    t.decimal  "amount",               precision: 10
    t.integer  "member_id",  limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "donations", ["member_id"], name: "index_donations_on_member_id", using: :btree

  create_table "emails", force: :cascade do |t|
    t.integer  "member_id",    limit: 4
    t.string   "subject",      limit: 255
    t.integer  "account_id",   limit: 4
    t.string   "subject_type", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "organization_id",   limit: 4
    t.string   "first_name",        limit: 255
    t.string   "last_name",         limit: 255
    t.string   "email",             limit: 255
    t.string   "phone",             limit: 255
    t.integer  "age",               limit: 4
    t.integer  "hours_worked",      limit: 4
    t.datetime "last_contacted_at"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.text     "roles",             limit: 65535
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "tax_id",     limit: 65535
  end

end
