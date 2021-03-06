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

ActiveRecord::Schema.define(version: 2021_04_26_135528) do

  create_table "brazil_data", force: :cascade do |t|
    t.string "country"
    t.integer "cases"
    t.integer "deaths"
    t.integer "confirmer"
    t.date "datetime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "by_dates", force: :cascade do |t|
    t.string "name"
    t.string "initials"
    t.integer "cases"
    t.integer "deaths"
    t.integer "suspects"
    t.date "datetime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "by_months", force: :cascade do |t|
    t.string "name"
    t.string "initials"
    t.integer "cases"
    t.integer "deaths"
    t.integer "suspects"
    t.date "datetime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "initials"
    t.integer "cases"
    t.integer "deaths"
    t.integer "suspects"
    t.date "datetime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
