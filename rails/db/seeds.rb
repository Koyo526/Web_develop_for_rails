# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Company.create!(
  ieul_id: 1,
  name: 'A不動産'
)
Company.create!(
  ieul_id: 2,
  name: 'B不動産'
)
Company.create!(
  ieul_id: 3,
  name: 'C不動産'
)
Prefecture.create!(
  name: '北海道'
)
Prefecture.create!(
  name: '青森'
)
City.create!(
  prefecture_id: 1,
  name: '札幌市'
)
City.create!(
    prefecture_id: 1,
    name: '北広島市'
)
City.create!(
    prefecture_id: 2,
    name: '青森市'
)
Office.create!(
    company_id: 1,ieul_id: 1,ieul_office_id: 1,name: "A支店",
    post_number:"000-0000",prefecture_id: 1, city_id:1,address:"AAAA-AAAAA",
    logo_url: "xxxx.com",phone_number:"09012345678", fax_number:"08012345678",
    business_time:"00:00~23:59",regular_holiday: "Weekday",catch_copy:"Pokemon Get daze",
    introducion: "Pokemon Sleep",available_area:"653,483"
)
Office.create!(
    company_id: 2,ieul_id: 2,ieul_office_id: 2,name: "B支店",
    post_number:"000-0000",prefecture_id: 1, city_id:2,address:"BBBB-BBBBB",
    logo_url: "xxxx.com",phone_number:"09012345678", fax_number:"08012345678",
    business_time:"00:00~23:59",regular_holiday: "Weekday",catch_copy:"Pokemon Get daze",
    introducion: "Pokemon Sleep",available_area:"653,483"
)
Office.create!(
    company_id: 3,ieul_id: 3,ieul_office_id: 3,name: "C支店",
    post_number:"000-0000",prefecture_id: 2, city_id:3,address:"CCCC-CCCC",
    logo_url: "xxxx.com",phone_number:"09012345678", fax_number:"08012345678",
    business_time:"00:00~23:59",regular_holiday: "Weekday",catch_copy:"Pokemon Get daze",
    introducion: "Pokemon Sleep",available_area:"653,483"
)
Reviews.create!(
    user_id,  
    office, 
    ieul_id,  
    ieul_office_id,
    user_name, 
    user_sex, 
    user_age, 
    prefecture_id, 
    city, 
    address,  
    property_type, 
    number_of_sales,  
    sale_consideration_date,  
    assessment_request_date,
    selling_date,  
    sale_date,  
    release_date,  
    sales_speed_satisfaction,  
    assessment_price, 
    selling_price, 
    is_discounted, 
    months_to_discount 
    discount_price 
    contract_price, 
    contract_price_satisfaction,  
    intermediary_agreement_type,  
    headline,  
    reason_for_sale, 
    concern_for_sale,  
    reason_for_choosing_office,  
    support_satisfaction,  
    reason_for_support_satiosfaction,  
    advise, 
    improvement_point 
)