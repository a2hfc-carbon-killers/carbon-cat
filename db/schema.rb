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

ActiveRecord::Schema.define(:version => 20130602152220) do

  create_table "addresses", :force => true do |t|
    t.string   "formatted_address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "street_number"
    t.string   "route"
    t.string   "locality"
    t.string   "administrative_area_level_2"
    t.string   "administrative_area_level_1"
    t.string   "country"
    t.string   "postal_code"
    t.integer  "floor_area"
    t.integer  "year_built"
    t.integer  "occupancy"
    t.string   "heat"
    t.boolean  "wood_stove"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "neighborhood"
  end

end
