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

ActiveRecord::Schema.define(version: 20190910202509) do

  create_table "characters", force: :cascade do |t|
    t.string  "name"
    t.integer "age"
    t.string  "race"
  end

  create_table "ring_bearers", force: :cascade do |t|
    t.integer "character_id"
    t.integer "ring_id"
    t.string  "date_captured"
    t.string  "date_lost"
    t.string  "current_bearer"
    t.string  "deleted"
  end

  create_table "rings", force: :cascade do |t|
    t.string  "name"
    t.string  "maker"
    t.string  "power"
    t.string  "alignment"
    t.string  "location"
    t.integer "creation_date"
  end

end
