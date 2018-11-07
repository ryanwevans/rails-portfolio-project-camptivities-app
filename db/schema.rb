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

ActiveRecord::Schema.define(version: 2018_11_07_022721) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "counselors_needed"
    t.text "description"
  end

  create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.boolean "filled", default: false
    t.integer "camp_counselor_id"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "leader_needed", default: false
    t.index ["activity_id"], name: "index_assignments_on_activity_id"
    t.index ["camp_counselor_id"], name: "index_assignments_on_camp_counselor_id"
  end

  create_table "camp_counselors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "age"
    t.boolean "leader", default: false
    t.string "uid"
    t.string "provider"
  end

end
