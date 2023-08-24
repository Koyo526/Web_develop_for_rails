# frozen_string_literal: true

class AssessmentRequest < ApplicationRecord
  validates :branch_id, presence: true
  validates :property_city, presence: true
  validates :property_address, presence: true
  validates :property_type, presence: true
  validates :property_exclusive_area, presence: true
  validates :property_land_area, presence: true
  validates :property_building_area_float, presence: true
  validates :property_building_area_unit, presence: true
  validates :property_floor_area, presence: true
  validates :url_param, presence: true
  validates :property_room_plan, presence: true
  validates :property_constructed_year, presence: true
  validates :user_email, presence: true
  validates :user_name, presence: true
  validates :user_name_kana, presence: true
  validates :user_tel, presence: true
end
