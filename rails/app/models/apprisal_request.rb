class ApprisalRequest < ApplicationRecord
    validate :branch_id, presence: true
    validate :property_city, presence: true
    validate :property_address, presence: true
    validate :property_type, presence: true
    validate :property_exclusive_area, presence: true
    validate :property_land_area, presence: true
    validate :property_building_area_float, presence: true
    validate :property_building_area_unit, presence: true
    validate :property_floor_area, presence: true
    validate :url_param, presence: true
    validate :property_room_plan, presence: true
    validate :property_constructed_year, presence: true
    validate :user_email, presence: true
    validate :user_name, presence: true
    validate :user_name_kana, presence: true
    validate :user_tel, presence: true
end
