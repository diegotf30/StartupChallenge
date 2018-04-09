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

ActiveRecord::Schema.define(version: 20180409050828) do

  create_table "available_blocks", force: :cascade do |t|
    t.string "start"
    t.string "end"
    t.integer "day"
    t.integer "tutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tutor_id"], name: "index_available_blocks_on_tutor_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "TECid"
    t.string "name"
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tooks", force: :cascade do |t|
    t.date "year"
    t.string "semester"
    t.float "grade"
    t.string "professor"
    t.integer "tutor_id"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_tooks_on_subject_id"
    t.index ["tutor_id"], name: "index_tooks_on_tutor_id"
  end

  create_table "tutors", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "occupation"
    t.integer "age"
    t.float "rate"
    t.float "gpa"
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "avatar"
  end

end
