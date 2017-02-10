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

ActiveRecord::Schema.define(version: 20170112142323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_dynamic_attributes", force: :cascade do |t|
    t.integer  "customizable_id",                              null: false
    t.string   "customizable_type", limit: 50
    t.string   "display_name",                                 null: false
    t.string   "name"
    t.text     "value"
    t.integer  "datatype"
    t.boolean  "required",                     default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["customizable_id"], name: "index_active_dynamic_attributes_on_customizable_id", using: :btree
    t.index ["customizable_type"], name: "index_active_dynamic_attributes_on_customizable_type", using: :btree
  end

  create_table "contact_attributes", force: :cascade do |t|
    t.string   "name"
    t.integer  "datatype"
    t.boolean  "required",   default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
