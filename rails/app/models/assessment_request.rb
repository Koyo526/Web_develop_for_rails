# frozen_string_literal: true

class AssessmentRequest
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :branch_id, :integer
  attribute :property_city, :integer
  attribute :property_address, :string
  attribute :property_type, :integer
  attribute :property_exclusive_area, :float
  attribute :property_land_area, :float
  attribute :property_building_area, :float
  attribute :property_constructed_year, :integer
  attribute :user_email, :string
  attribute :user_lastname, :string
  attribute :user_firstname, :string
  attribute :user_lastname_kana, :string
  attribute :user_firstname_kana, :string
  attribute :user_tel, :string

  with_options presence: true do
    validates :branch_id
    validates :property_city
    validates :property_address
    validates :property_type
    validates :property_land_area
  end

  validate :validate_property_exclusive_area, :validate_property_land_area, :validate_property_building_area

  def validate_property_exclusive_area
    # https://railsguides.jp/active_record_validations.html#%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%A0%E3%83%A1%E3%82%BD%E3%83%83%E3%83%89
    return unless property_type == 1
    return if property_exclusive_area.present?

    errors.add :property_exclusive_area, 'は必須です'
  end

  def validate_property_land_area
    # https://railsguides.jp/active_record_validations.html#%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%A0%E3%83%A1%E3%82%BD%E3%83%83%E3%83%89
    return unless [2, 3].include?(property_type)
    return if property_exclusive_area.present?

    errors.add :property_land_area, 'は必須です'
  end

  def validate_property_building_area
    # https://railsguides.jp/active_record_validations.html#%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%A0%E3%83%A1%E3%82%BD%E3%83%83%E3%83%89
    return unless property_type ==  2
    return if property_exclusive_area.present?

    errors.add :property_building_area, 'は必須です'
  end

  validates :user_email, presence: true,
                         length: { maximum: 100 },
                         format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  validates :user_firstname,
            presence: true,
            format: { with: /\A[\p{Han}\p{Katakana}\p{Hiragana}ー\s]+\z/,
                      message: I18n.t(
                        'activerecord.errors.models.assessment_request.attributes.user_firstname.invalid_format'
                      ) }

  validates :user_lastname,
            presence: true,
            format: { with: /\A[\p{Han}\p{Katakana}\p{Hiragana}ー\s]+\z/,
                      message: I18n.t(
                        'activerecord.errors.models.assessment_request.attributes.user_lastname.invalid_format'
                      ) }

  validates :user_firstname_kana,
            presence: true,
            format: { with: /\A[\p{Katakana}ー\s]+\z/,
                      message: I18n.t(
                        'activerecord.errors.models.assessment_request.attributes.user_firstname_kana.invalid_format'
                      ) }
  validates :user_lastname_kana,
            presence: true,
            format: { with: /\A[\p{Katakana}ー\s]+\z/,
                      message: I18n.t(
                        'activerecord.errors.models.assessment_request.attributes.user_lastname_kana.invalid_format'
                      ) }
  validates :user_tel,
            presence: true,
            numericality: { only_integer: true },
            length: { in: 10..11 },
            format: { with: /\A0\d{9,10}\z/,
                      message: I18n.t(
                        'activerecord.errors.models.assessment_request.attributes.user_tel.invalid_format'
                      ) }

  def save
    if invalid?
      Rails.logger.debug 'failed validation'
      return false
    end

    ieul_api_client = Assessment::Request::IeulApiClient.new
    res = ieul_api_client.post(params)

    return true if res.code == '200'

    Rails.logger.debug 'failed to post missiong'
    false
  end

  private

  def params
    attributes.merge(user_name: user_name, user_name_kana: user_name_kana)
  end

  def user_name
    "#{user_firstname} #{user_lastname}"
  end

  def user_name_kana
    "#{user_lastname_kana} #{user_firstname_kana}"
  end
end
