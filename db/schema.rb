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

ActiveRecord::Schema.define(version: 2021_12_29_073906) do

  create_table "appointments", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.date "date"
    t.integer "doctor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "specialist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nurses", force: :cascade do |t|
    t.string "name"
    t.string "shift_start"
    t.string "shift_end"
    t.integer "ward_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ward_id"], name: "index_nurses_on_ward_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "gender"
    t.string "age"
    t.date "admit_date"
    t.string "disease"
    t.integer "doctor_id", null: false
    t.integer "ward_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_patients_on_doctor_id"
    t.index ["ward_id"], name: "index_patients_on_ward_id"
  end

  create_table "wards", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "w_type"
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "nurses", "wards"
  add_foreign_key "patients", "doctors"
  add_foreign_key "patients", "wards"
end
