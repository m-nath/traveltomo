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

ActiveRecord::Schema.define(version: 2019_09_14_123643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_plans", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_plans_on_event_id"
    t.index ["plan_id"], name: "index_event_plans_on_plan_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "photo"
    t.date "date"
    t.text "location"
    t.float "latitude"
    t.float "longitude"
    t.bigint "month_id"
    t.bigint "prefectures_id"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["month_id"], name: "index_events_on_month_id"
    t.index ["prefectures_id"], name: "index_events_on_prefectures_id"
  end

  create_table "interests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_interests_on_event_id"
    t.index ["user_id"], name: "index_interests_on_user_id"
  end

  create_table "months", force: :cascade do |t|
    t.string "name"
    t.bigint "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_months_on_season_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.bigint "month_id"
    t.integer "num_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["month_id"], name: "index_plans_on_month_id"
    t.index ["user_id"], name: "index_plans_on_user_id"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_prefectures_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_reviews_on_event_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "event_plans", "events"
  add_foreign_key "event_plans", "plans"
  add_foreign_key "events", "months"
  add_foreign_key "events", "prefectures", column: "prefectures_id"
  add_foreign_key "interests", "events"
  add_foreign_key "interests", "users"
  add_foreign_key "months", "seasons"
  add_foreign_key "plans", "months"
  add_foreign_key "plans", "users"
  add_foreign_key "prefectures", "regions"
  add_foreign_key "reviews", "events"
  add_foreign_key "reviews", "users"
end
