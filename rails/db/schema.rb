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

ActiveRecord::Schema[7.0].define(version: 2023_08_23_050421) do
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

  create_table "display_reviews", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "reviews_id", null: false
    t.bigint "offices_id", null: false
    t.integer "ieul_id", null: false
    t.integer "ieul_office_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offices_id"], name: "index_display_reviews_on_offices_id"
    t.index ["reviews_id"], name: "index_display_reviews_on_reviews_id"
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

  create_table "reviews", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "review_id", null: false
    t.integer "user_id", null: false
    t.integer "ieul_id", null: false
    t.integer "ieul_office_id", null: false
    t.string "user_name", null: false
    t.integer "user_sex", null: false
    t.integer "user_age", null: false
    t.integer "property_id", null: false
    t.integer "prefecture_id", null: false
    t.bigint "cities_id", null: false
    t.string "address", null: false
    t.string "property_type", null: false
    t.date "assessment_request_date", null: false
    t.date "selling_date", null: false
    t.date "sale_date", null: false
    t.date "release_date", null: false
    t.integer "assessment_price", null: false
    t.integer "selling_price", null: false
    t.boolean "is_discounted", null: false
    t.integer "months_to_discount"
    t.integer "discount_price"
    t.integer "contract_price", null: false
    t.integer "intermediary_agreement_type", null: false
    t.string "headline", null: false
    t.integer "reason_for_sale", null: false
    t.text "concern_for_sale", null: false
    t.text "reason_for_choosing_office", null: false
    t.integer "support_satisfaction", null: false
    t.text "reason_for_support_satiosfaction", null: false
    t.text "advise", null: false
    t.text "improvement_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cities_id"], name: "index_reviews_on_cities_id"
  end

  add_foreign_key "cities", "prefectures", column: "prefectures_id"
  add_foreign_key "display_reviews", "offices", column: "offices_id"
  add_foreign_key "display_reviews", "reviews", column: "reviews_id"
  add_foreign_key "offices", "cities", column: "cities_id"
  add_foreign_key "offices", "companies", column: "companies_id"
  add_foreign_key "reviews", "cities", column: "cities_id"
end
