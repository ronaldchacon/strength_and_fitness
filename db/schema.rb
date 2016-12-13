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

ActiveRecord::Schema.define(version: 20161213205225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipment", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercise_exercise_types", force: :cascade do |t|
    t.integer  "exercise_id"
    t.integer  "exercise_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["exercise_id"], name: "index_exercise_exercise_types_on_exercise_id", using: :btree
    t.index ["exercise_type_id"], name: "index_exercise_exercise_types_on_exercise_type_id", using: :btree
  end

  create_table "exercise_muscles", force: :cascade do |t|
    t.integer  "exercise_id"
    t.integer  "muscle_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["exercise_id"], name: "index_exercise_muscles_on_exercise_id", using: :btree
    t.index ["muscle_id"], name: "index_exercise_muscles_on_muscle_id", using: :btree
  end

  create_table "exercise_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "muscles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "exercise_exercise_types", "exercise_types"
  add_foreign_key "exercise_exercise_types", "exercises"
  add_foreign_key "exercise_muscles", "exercises"
  add_foreign_key "exercise_muscles", "muscles"
end
