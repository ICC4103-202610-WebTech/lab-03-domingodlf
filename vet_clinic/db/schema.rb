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

ActiveRecord::Schema[8.1].define(version: 2026_04_09_210839) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "date", null: false
    t.integer "pet_id", null: false
    t.string "reason"
    t.integer "status", null: false
    t.datetime "updated_at", null: false
    t.integer "vet_id", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.text "address"
    t.datetime "created_at", null: false
    t.string "email"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone"
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "breed"
    t.datetime "created_at", null: false
    t.date "date_of_birth"
    t.string "name", null: false
    t.integer "owner_id", null: false
    t.string "species", null: false
    t.datetime "updated_at", null: false
    t.decimal "weight"
  end

  create_table "treatments", force: :cascade do |t|
    t.datetime "administered_at", null: false
    t.integer "appointment_id", null: false
    t.datetime "created_at", null: false
    t.string "dosage"
    t.string "medication"
    t.string "name", null: false
    t.text "notes"
    t.datetime "updated_at", null: false
  end

  create_table "vets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone"
    t.string "specialization", null: false
    t.datetime "updated_at", null: false
  end
end
