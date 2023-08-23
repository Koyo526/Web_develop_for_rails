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

ActiveRecord::Schema[7.0].define(version: 2023_08_23_035235) do
  create_table "cities", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "city_id", null: false
    t.bigint "prefectures_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefectures_id"], name: "index_cities_on_prefectures_id"
  end

  create_table "companies", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "ieul_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offices", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "companies_id", null: false
    t.integer "office_id", null: false
    t.integer "ieul_id"
    t.integer "ieul_office_id"
    t.string "name"
    t.string "post_number"
    t.integer "prefecture_id"
    t.bigint "cities_id", null: false
    t.string "address"
    t.string "logo_url"
    t.integer "fax_number"
    t.string "business_time"
    t.string "regular_holiday"
    t.string "catch_copy"
    t.text "introducion"
    t.string "available_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cities_id"], name: "index_offices_on_cities_id"
    t.index ["companies_id"], name: "index_offices_on_companies_id"
  end

  create_table "prefectures", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "prefecture_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cities", "prefectures", column: "prefectures_id"
  add_foreign_key "offices", "cities", column: "cities_id"
  add_foreign_key "offices", "companies", column: "companies_id"
end
