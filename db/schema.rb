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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120211180222) do

  create_table "capital_accounts", :force => true do |t|
    t.float    "amount"
    t.boolean  "type"
    t.integer  "capital_type_id"
    t.string   "tr_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tr_type"
  end

  create_table "capital_types", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cr_accounts", :force => true do |t|
    t.float    "amount"
    t.string   "cr_date"
    t.string   "cr_type"
    t.string   "cheque"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "desc"
    t.string   "street"
    t.string   "state"
    t.string   "country"
    t.integer  "zip"
    t.string   "mail"
    t.string   "altmail"
    t.string   "ct1"
    t.string   "ct2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grn_pos", :force => true do |t|
    t.string   "grn_date"
    t.string   "bill"
    t.string   "billdate"
    t.integer  "inward_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "i_stocks", :force => true do |t|
    t.integer  "amt"
    t.string   "tr_type"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iclasses", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inwards", :force => true do |t|
    t.string   "indate"
    t.string   "intime"
    t.string   "chalan"
    t.string   "chalandate"
    t.integer  "p_order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.float    "rate"
    t.string   "unit"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "iclass_id"
    t.float    "s_rate"
    t.integer  "stock"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "qty"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "p_order_id"
    t.integer  "rev_qty"
    t.integer  "acc_qty"
    t.integer  "sundry_grn_id"
    t.integer  "s_order_id"
    t.integer  "req_qty"
    t.integer  "requisition_id"
  end

  create_table "p_orders", :force => true do |t|
    t.integer  "ref"
    t.string   "issue"
    t.string   "expires"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "supplier_id"
  end

  create_table "requisitions", :force => true do |t|
    t.string   "issue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "s_orders", :force => true do |t|
    t.string   "ref"
    t.string   "issue"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sundry_grns", :force => true do |t|
    t.string   "bill"
    t.string   "billdate"
    t.string   "issue"
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "desc"
    t.string   "street"
    t.string   "state"
    t.string   "country"
    t.integer  "zip"
    t.string   "mail"
    t.string   "altmail"
    t.string   "ct1"
    t.string   "ct2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tr_accounts", :force => true do |t|
    t.float    "amount"
    t.string   "tr_date"
    t.string   "tr_type"
    t.string   "cheque"
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
