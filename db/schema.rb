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

ActiveRecord::Schema.define(version: 20160915023955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "learners", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "age"
    t.string   "parent_guardian"
    t.string   "contact_info"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.string   "inventory_of_favorites"
    t.index ["user_id"], name: "index_learners_on_user_id", using: :btree
  end

  create_table "logs", force: :cascade do |t|
    t.string   "title"
    t.string   "starting_mood"
    t.integer  "level"
    t.boolean  "verbal_word_approximation"
    t.boolean  "physically_identify"
    t.string   "good_choices"
    t.string   "action"
    t.string   "observations"
    t.string   "comments"
    t.date     "date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "learner_id"
    t.index ["learner_id"], name: "index_logs_on_learner_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "case_manager"
    t.boolean  "speech_therapist"
    t.boolean  "occupational_therapist"
    t.boolean  "parent_guardian"
    t.string   "image"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "learners", "users"
  add_foreign_key "logs", "learners"
end
