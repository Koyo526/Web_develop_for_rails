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
  validates :user_email, presence: true,
                         length: { maximum: 100 },
                         format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  validates :user_name, presence: true,
                        format: { with: /\A[\p{Han}\p{Katakana}\p{Hiragana}ー\s]+\z/,
                                  message: 'は漢字、ひらがな、カタカナ、ー（半角ハイフンマイナス）、空白のみ入力可能です' }

  validates :user_name_kana, presence: true,
                             format: { with: /\A[\p{Katakana}ー\s]+\z/,
                                       message: 'はカタカナ、ー（半角ハイフンマイナス）、空白のみ入力可能です' }

  validates :user_tel, presence: true,
                       numericality: { only_integer: true },
                       length: { in: 10..11 },
                       format: { with: /\A0\d+\z/,
                                 message: 'は0で始まる10桁または11桁の数字を入力してください' }
end
