# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_29_074300) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "doctor_id", null: false
    t.date "appointment_date"
    t.time "appointment_time"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "doctor_specializations", force: :cascade do |t|
    t.bigint "doctor_id"
    t.bigint "specialization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id", "specialization_id"], name: "index_doctor_specializations_on_doctor_id_and_specialization_id", unique: true
    t.index ["doctor_id"], name: "index_doctor_specializations_on_doctor_id"
    t.index ["specialization_id"], name: "index_doctor_specializations_on_specialization_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "doc_name"
    t.string "education"
    t.text "bio"
    t.integer "years_of_experience"
    t.string "profile_pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specializations", force: :cascade do |t|
    t.string "field_of_specialization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "users"
  add_foreign_key "doctor_specializations", "doctors"
  add_foreign_key "doctor_specializations", "specializations"
end
