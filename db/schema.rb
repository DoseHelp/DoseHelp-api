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

ActiveRecord::Schema.define(version: 2022_07_19_035531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dispenses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "prescription_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prescription_id"], name: "index_dispenses_on_prescription_id"
    t.index ["user_id"], name: "index_dispenses_on_user_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "surname"
    t.string "clinic"
    t.string "address"
    t.string "phone"
    t.string "fax"
    t.string "prescriber_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string "name"
    t.string "brand_name"
    t.string "form"
    t.string "strength"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "details"
    t.bigint "prescription_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prescription_id"], name: "index_notes_on_prescription_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "surname"
    t.string "dob"
    t.string "address"
    t.string "phone"
    t.string "gender"
    t.string "ihi"
    t.float "credit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "prescription_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_payments_on_patient_id"
    t.index ["prescription_id"], name: "index_payments_on_prescription_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string "issue_date"
    t.string "expiry_date"
    t.boolean "takeaway"
    t.bigint "doctor_id", null: false
    t.bigint "patient_id", null: false
    t.bigint "drug_id", null: false
    t.boolean "prescription_valid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id"
    t.index ["drug_id"], name: "index_prescriptions_on_drug_id"
    t.index ["patient_id"], name: "index_prescriptions_on_patient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "surname"
    t.boolean "admin"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "prescriptions", "doctors"
  add_foreign_key "prescriptions", "drugs"
  add_foreign_key "prescriptions", "patients"
end
