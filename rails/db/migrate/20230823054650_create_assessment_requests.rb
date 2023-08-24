# frozen_string_literal: true

class CreateAssessmentRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :assessment_requests do |t|
      t.integer :branch_id
      t.integer :property_city
      t.string :property_address
      t.integer :property_type
      t.float :property_exclusive_area
      t.float :property_land_area
      t.float :property_building_area_float
      t.integer :property_building_area_unit
      t.float :property_floor_area
      t.string :url_param
      t.integer :property_room_plan
      t.integer :property_constructed_year
      t.string :user_email
      t.string :user_name
      t.string :user_name_kana
      t.string :user_tel
      t.timestamps
    end
  end
end
