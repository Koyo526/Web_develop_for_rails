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
  company_id: 1, ieul_id: 1, ieul_office_id: 1, name: 'A支店',
  post_number: '000-0000', prefecture_id: 1, city_id: 1, address: 'AAAA-AAAAA',
  logo_url: 'xxxx.com', phone_number: '09012345678', fax_number: '08012345678',
  business_time: '00:00~23:59', regular_holiday: 'Weekday', catch_copy: 'Pokemon Get daze',
  introducion: 'Pokemon Sleep', available_area: '653,483'
)
Office.create!(
  company_id: 2, ieul_id: 2, ieul_office_id: 2, name: 'B支店',
  post_number: '000-0000', prefecture_id: 1, city_id: 2, address: 'BBBB-BBBBB',
  logo_url: 'xxxx.com', phone_number: '09012345678', fax_number: '08012345678',
  business_time: '00:00~23:59', regular_holiday: 'Weekday', catch_copy: 'Pokemon Get daze',
  introducion: 'Pokemon Sleep', available_area: '653,483'
)
Office.create!(
  company_id: 3, ieul_id: 3, ieul_office_id: 3, name: 'C支店',
  post_number: '000-0000', prefecture_id: 2, city_id: 3, address: 'CCCC-CCCC',
  logo_url: 'xxxx.com', phone_number: '09012345678', fax_number: '08012345678',
  business_time: '00:00~23:59', regular_holiday: 'Weekday', catch_copy: 'Pokemon Get daze',
  introducion: 'Pokemon Sleep', available_area: '653,483'
)
Review.create!(
  user_id: 123,
  office_id: 1,
  ieul_id: 1,
  ieul_office_id: 1,
  user_name: 'hoge',
  user_sex: 1,
  user_age: 10,
  prefecture_id: 1,
  city_id: 1,
  address: '中央区1-1',
  property_type: 'マンション',
  number_of_sales: 0,
  sale_consideration_date: '2018-02-14',
  assessment_request_date: '2018-03-14',
  selling_date: '2018-04-14',
  sale_date: '2018-05-14',
  release_date: '2018-06-14',
  sales_speed_satisfaction: 1,
  assessment_price: 10_000,
  selling_price: 10_000,
  is_discounted: false,
  months_to_discount: nil,
  discount_price: nil,
  contract_price: 10_000,
  contract_price_satisfaction: 4,
  intermediary_agreement_type: 1,
  headline: 'hogehoge',
  reason_for_sale: 'hogehogeho--ge',
  concern_for_sale: 'ho-ge',
  reason_for_choosing_office: 'hogegege',
  support_satisfaction: '2',
  reason_for_support_satiosfaction: 'hohohoho',
  advise: 'hahahaha',
  improvement_point: 'ganbare'
)
