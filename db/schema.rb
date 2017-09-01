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

ActiveRecord::Schema.define(version: 20170901180617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "activities", force: :cascade do |t|
    t.string "description"
    t.string "title"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "event_id"
    t.datetime "date"
    t.datetime "time"
  end

  create_table "event_teams", id: false, force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "team_id", null: false
    t.index ["event_id", "team_id"], name: "index_event_teams_on_event_id_and_team_id"
    t.index ["team_id", "event_id"], name: "index_event_teams_on_team_id_and_event_id"
  end

  create_table "event_volunteers", id: false, force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "volunteer_id", null: false
    t.index ["event_id", "volunteer_id"], name: "index_event_volunteers_on_event_id_and_volunteer_id"
    t.index ["volunteer_id", "event_id"], name: "index_event_volunteers_on_volunteer_id_and_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_date"
    t.datetime "end_date"
  end

  create_table "supplementals", force: :cascade do |t|
    t.string "attachment_file_name"
    t.string "attachment_content_type"
    t.integer "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "event_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "car_number"
    t.string "competitor_type"
    t.string "car_type"
    t.string "driver_name"
    t.string "co_driver_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "car_class"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.bigint "phone_number"
    t.datetime "birthday"
    t.string "shirt_size"
    t.string "previous_position"
    t.string "previous_rallys"
    t.string "position"
    t.string "qualifications"
    t.string "medical"
    t.integer "sfi_number"
    t.string "sweep_equipment"
    t.boolean "ham_operator", default: false
    t.string "ham_number"
    t.string "radio_equipment"
    t.string "friends"
    t.boolean "first_time_volunteer", default: false
    t.datetime "available_dates"
  end

end
