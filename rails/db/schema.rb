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

ActiveRecord::Schema[7.0].define(version: 2023_08_22_060152) do
  create_table "city_tables", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "city_id"
    t.integer "prefecture_id"
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_tables", primary_key: "company_id", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "company_name"
    t.string "logo_url"
    t.integer "fax_number"
    t.string "business_hours"
    t.string "regular_holiday"
    t.string "catch_copy"
    t.string "introduction"
    t.string "available_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefecture_tables", primary_key: "prefecture_id", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "prefecture_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_tables", primary_key: "store_id", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "company_id"
    t.string "store_name"
    t.string "post_number"
    t.integer "prefecture_id"
    t.integer "city_id"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_experiences", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "company_id"
    t.integer "store_id"
    t.integer "experience_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
