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

ActiveRecord::Schema.define(:version => 20130624011550) do

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "areas", ["city_id"], :name => "index_areas_on_city_id"
  add_index "areas", ["name", "city_id"], :name => "index_areas_on_name_and_city_id", :unique => true

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "short"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["name"], :name => "index_cities_on_name", :unique => true
  add_index "cities", ["short"], :name => "index_cities_on_short", :unique => true

  create_table "events", :force => true do |t|
    t.datetime "date"
    t.text     "goal"
    t.text     "notes"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "publisher_id"
    t.integer  "partner_id"
    t.string   "event_type"
    t.string   "status"
  end

  add_index "events", ["event_type"], :name => "index_events_on_event_type"
  add_index "events", ["status"], :name => "index_events_on_status"

  create_table "homes", :force => true do |t|
    t.string   "address_street"
    t.string   "phone"
    t.string   "address_number"
    t.integer  "territory_id"
    t.integer  "area_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "homes", ["area_id"], :name => "index_homes_on_area_id"
  add_index "homes", ["territory_id"], :name => "index_homes_on_territory_id"

  create_table "territories", :force => true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "territories", ["city_id"], :name => "index_territories_on_city_id"
  add_index "territories", ["name", "city_id"], :name => "index_territories_on_name_and_city_id", :unique => true

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.boolean  "admin",                  :default => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.boolean  "publisher"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["name"], :name => "index_users_on_name", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
