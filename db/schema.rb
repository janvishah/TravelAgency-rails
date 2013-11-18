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

ActiveRecord::Schema.define(:version => 20131114121314) do

  create_table "packagelocations", :force => true do |t|
    t.string   "location"
    t.text     "text"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "packagelocations", ["location"], :name => "index_packagelocations_on_location", :unique => true

  create_table "places", :force => true do |t|
    t.string   "place"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "places", ["place"], :name => "index_places_on_place", :unique => true

  create_table "tour_places", :force => true do |t|
    t.integer  "tour_id"
    t.integer  "place_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tour_places", ["tour_id", "place_id"], :name => "index_tour_places_on_tour_id_and_place_id", :unique => true

  create_table "tours", :force => true do |t|
    t.integer  "packagelocation_id"
    t.string   "name"
    t.integer  "days"
    t.integer  "nights"
    t.datetime "date"
    t.text     "text"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "tours", ["name", "days", "date"], :name => "index_tours_on_name_and_days_and_date", :unique => true

  create_table "travellers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "ph_no"
    t.string   "email"
    t.integer  "children"
    t.integer  "adult"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "travellers", ["email"], :name => "index_travellers_on_email", :unique => true

end
