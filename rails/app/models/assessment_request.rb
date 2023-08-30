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

  validates :user_firstname, presence: true,
                        format: { with: /\A[\p{Han}\p{Katakana}\p{Hiragana}ー\s]+\z/,
                                  message: I18n.t('activerecord.errors.models.assessment_request.
                                    attributes.some_attribute.invalid_format') }

  validates :user_lastname, presence: true,
                        format: { with: /\A[\p{Han}\p{Katakana}\p{Hiragana}ー\s]+\z/,
                                  message: I18n.t('activerecord.errors.models.assessment_request.
                                    attributes.some_attribute.invalid_format') }

  validates :user_firstname_kana, presence: true,
                             format: { with: /\A[\p{Katakana}ー\s]+\z/,
                                       message: I18n.t('activerecord.errors.models.assessment_request.
                                        attributes.some_attribute.invalid_format') }
  validates :user_lastname_kana, presence: true,
                             format: { with: /\A[\p{Katakana}ー\s]+\z/,
                                       message: I18n.t('activerecord.errors.models.assessment_request.
                                        attributes.some_attribute.invalid_format') }

  validates :user_tel, presence: true,
                       numericality: { only_integer: true },
                       length: { in: 10..11 },
                       format: { with: /\A0\d{9,10}\z/,
                                 message: I18n.t('activerecord.errors.models.assessment_request.
                                  attributes.user_tel.invalid_format') }
end
