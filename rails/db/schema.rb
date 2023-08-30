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
ActiveRecord::Schema[7.0].define(version: 2023_08_28_014451) do
  create_table "assessable_areas", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "office_id", null: false, comment: "企業ID"
    t.bigint "city_id", null: false, comment: "市区町村ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id", "office_id"], name: "index_assessable_areas_on_city_id_and_office_id", unique: true
    t.index ["city_id"], name: "index_assessable_areas_on_city_id"
    t.index ["office_id"], name: "index_assessable_areas_on_office_id"
  end

  create_table "assessment_requests", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "branch_id"
    t.integer "property_city"
    t.string "property_address"
    t.integer "property_type"
    t.float "property_exclusive_area"
    t.float "property_land_area"
    t.float "property_building_area_float"
    t.integer "property_building_area_unit"
    t.float "property_floor_area"
    t.string "url_param"
    t.integer "property_room_plan"
    t.integer "property_constructed_year"
    t.string "user_email"
    t.string "user_name"
    t.string "user_name_kana"
    t.string "user_tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "prefecture_id", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_cities_on_prefecture_id"
  end

  create_table "companies", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ieul_id", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offices", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.integer "ieul_id", null: false
    t.integer "ieul_office_id", null: false
    t.string "name"
    t.string "post_number"
    t.integer "prefecture_id", null: false
    t.bigint "city_id", null: false
    t.string "address", null: false
    t.string "logo_url", null: false
    t.string "phone_number"
    t.string "fax_number"
    t.string "business_time"
    t.string "regular_holiday"
    t.string "catch_copy", null: false
    t.text "introducion", null: false
    t.string "available_area", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_offices_on_city_id"
    t.index ["company_id"], name: "index_offices_on_company_id"
  end

  create_table "prefectures", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questionnaire_answers", primary_key: "review_id", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "send_target_users_id", null: false
    t.integer "ieul_id"
    t.integer "ieul_offic_id"
    t.string "user_name"
    t.integer "user_sex"
    t.integer "user_age"
    t.integer "property_id"
    t.integer "prefecture_id"
    t.integer "city_id"
    t.string "addres"
    t.string "property_type"
    t.date "assessment_request_data"
    t.date "selling_date"
    t.date "sale_date"
    t.date "release_date"
    t.integer "assessment_price"
    t.integer "selling_price"
    t.boolean "is_discounted", default: false, null: false
    t.integer "months_to_discount"
    t.integer "discount_price"
    t.integer "contrace_price"
    t.integer "intermediary_agreement_type"
    t.string "headline"
    t.integer "reason_for_sale"
    t.text "concern_for_sale"
    t.text "reason_for_choosing_office"
    t.integer "support_satisfaceion"
    t.text "reason_for_support_satisfaction"
    t.text "advise"
    t.text "improvement_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["send_target_users_id"], name: "index_questionnaire_answers_on_send_target_users_id"
  end

  create_table "reviews", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "user_id", null: false
    t.bigint "office_id", null: false
    t.integer "ieul_id", null: false
    t.integer "ieul_office_id", null: false
    t.string "user_name", null: false
    t.integer "user_sex", null: false
    t.integer "user_age", null: false
    t.integer "prefecture_id", null: false
    t.bigint "city_id", null: false
    t.string "address", null: false
    t.string "property_type", null: false
    t.integer "number_of_sales", null: false
    t.date "sale_consideration_date", null: false
    t.date "assessment_request_date", null: false
    t.date "selling_date", null: false
    t.date "sale_date", null: false
    t.date "release_date", null: false
    t.integer "sales_speed_satisfaction", null: false
    t.integer "assessment_price", null: false
    t.integer "selling_price", null: false
    t.boolean "is_discounted", default: false, null: false
    t.integer "months_to_discount"
    t.integer "discount_price"
    t.integer "contract_price", null: false
    t.integer "contract_price_satisfaction", null: false
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
    t.index ["city_id"], name: "index_reviews_on_city_id"
    t.index ["office_id"], name: "index_reviews_on_office_id"
  end

  create_table "send_target_users", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "email_address"
    t.boolean "opt_out", default: false, null: false
    t.boolean "check_response", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sent_emails", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "send_target_users_id", null: false
    t.string "email_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["send_target_users_id"], name: "index_sent_emails_on_send_target_users_id"
  end

  add_foreign_key "assessable_areas", "cities"
  add_foreign_key "assessable_areas", "offices"
  add_foreign_key "assessable_areas", "cities"
  add_foreign_key "assessable_areas", "offices"
  add_foreign_key "cities", "prefectures"
  add_foreign_key "offices", "cities"
  add_foreign_key "offices", "companies"
  add_foreign_key "questionnaire_answers", "send_target_users", column: "send_target_users_id"
  add_foreign_key "reviews", "cities"
  add_foreign_key "reviews", "offices"
  add_foreign_key "sent_emails", "send_target_users", column: "send_target_users_id"
end
