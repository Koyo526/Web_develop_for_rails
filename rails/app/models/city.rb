# frozen_string_literal: true

class City < ApplicationRecord
  belongs_to :prefectures, class_name: 'Prefecture', foreign_key: 'prefecture_id', inverse_of: 'cities'
  has_many :offices, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
