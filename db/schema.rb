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

ActiveRecord::Schema[7.0].define(version: 2022_06_04_223455) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blind_dates", force: :cascade do |t|
    t.date "meeting_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.bigint "unit_id", null: false
    t.datetime "last_lead_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_employees_on_unit_id"
  end

  create_table "employees_teams", id: false, force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "team_id", null: false
    t.boolean "does_want_food", default: false
    t.index ["employee_id", "team_id"], name: "index_employees_teams_on_employee_id_and_team_id"
    t.index ["team_id", "employee_id"], name: "index_employees_teams_on_team_id_and_employee_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "blind_date_id", null: false
    t.bigint "restaurant_id"
    t.bigint "leader_id"
    t.integer "no_going_to_lunch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blind_date_id", "leader_id"], name: "index_teams_on_blind_date_id_and_leader_id", unique: true
    t.index ["blind_date_id"], name: "index_teams_on_blind_date_id"
    t.index ["leader_id"], name: "index_teams_on_leader_id"
    t.index ["restaurant_id"], name: "index_teams_on_restaurant_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "units"
  add_foreign_key "teams", "blind_dates"
  add_foreign_key "teams", "employees", column: "leader_id"
  add_foreign_key "teams", "restaurants"
end
