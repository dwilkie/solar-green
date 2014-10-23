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

ActiveRecord::Schema.define(version: 20141019080929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventory_invoice_line_items", force: true do |t|
    t.integer  "inventory_invoice_id", null: false
    t.integer  "product_id",           null: false
    t.integer  "quantity",             null: false
    t.integer  "unit_price",           null: false
    t.integer  "final_unit_price",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_invoices", force: true do |t|
    t.integer  "shipping_cost",             null: false
    t.integer  "vat",                       null: false
    t.integer  "other_cost",    default: 0, null: false
    t.string   "number"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_line_items", force: true do |t|
    t.integer  "inventory_invoice_line_item_id",                      null: false
    t.integer  "product_id",                                          null: false
    t.integer  "unit_price",                                          null: false
    t.integer  "final_unit_price",                                    null: false
    t.string   "state",                          default: "in_stock", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string  "name",         null: false
    t.string  "type",         null: false
    t.text    "description"
    t.integer "power_rating"
    t.integer "voltage"
    t.integer "current"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email",                  default: "",    null: false
    t.boolean  "admin",                  default: false, null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree
  add_index "users", ["phone"], name: "index_users_on_phone", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
