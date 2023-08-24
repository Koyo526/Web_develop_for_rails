# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

CSV.foreach('db/csv/companies_master.csv', encoding: 'UTF-8') do |row|
  Company.create(ieul_id: row[2], name: row[0])
end
CSV.foreach('db/csv/prefectures_master.csv', encoding: 'UTF-8') do |row|
  Prefecture.create(name: row[1])
end
CSV.foreach('db/csv/cities_master.csv', encoding: 'UTF-8') do |row|
  City.create(prefecture_id: row[1], name: row[2])
end
CSV.foreach('db/csv/companies_master.csv', encoding: 'UTF-8') do |row|
  city = City.find_by(name: row[7])
  company = Company.find_by(id: row[2])
  Office.create(company_id: company.id, ieul_id: row[2], ieul_office_id: row[3], name: row[1], post_number: row[5],
                prefecture_id: city.prefecture_id, city_id: city.id, address: row[8], logo_url: row[4],
                phone_number: row[9], fax_number: row[10], business_time: row[11], regular_holiday: row[12],
                catch_copy: row[13], introducion: row[14], available_area: row[15])
end
