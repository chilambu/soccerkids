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

ActiveRecord::Schema.define(:version => 20120603134408) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "from_time"
    t.datetime "to_time"
    t.integer  "age"
    t.string   "status"
    t.date     "dates"
    t.string   "coach"
    t.string   "tuition"
    t.string   "programlist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
  end

  create_table "order_transactions", :force => true do |t|
    t.integer  "order_id"
    t.string   "action"
    t.integer  "amount"
    t.boolean  "success"
    t.string   "authorization"
    t.string   "message"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "cart_id"
    t.string   "ip_address"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "card_type"
    t.date     "card_expires_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "addressline1"
    t.string   "addressline2"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.integer  "home_phone"
    t.string   "alternate_phone"
    t.string   "alternate_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "players", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.boolean  "gender"
    t.date     "dob"
    t.string   "school_name"
    t.string   "registrant_info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "transaction_id"
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.string   "program_id"
    t.string   "programlist_id"
    t.string   "program_name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simple_captcha_data", :force => true do |t|
    t.string   "key",        :limit => 40
    t.string   "value",      :limit => 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], :name => "idx_key"

  create_table "transactions", :force => true do |t|
    t.string   "card_type"
    t.integer  "card_number",       :limit => 8
    t.date     "card_date"
    t.string   "card_verification"
    t.integer  "user_id"
    t.integer  "amount"
    t.string   "name"
    t.string   "adress"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
    t.string   "state"
    t.integer  "zip"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password_salt"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "notifi"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "addressline1"
    t.string   "addressline2"
    t.string   "city"
    t.integer  "zip"
    t.string   "state"
    t.integer  "home_phone",             :limit => 8
    t.integer  "alternate_phone",        :limit => 8
    t.string   "alternate_email"
    t.string   "role"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
