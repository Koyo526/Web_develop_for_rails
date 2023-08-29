# frozen_string_literal: true

class City < ApplicationRecord
  belongs_to :prefecture
  has_many :offices, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :assessable_areas, dependent: :destroy
  has_many :assessable_offices, through: :assessable_areas, source: :office, dependent: :destroy
end
