# frozen_string_literal: true

class Office < ApplicationRecord
  belongs_to :company
  belongs_to :city
  has_many :reviews, dependent: :destroy
  has_many :assessable_areas, foreign_key: :office_id
  has_many :assessable_cities ,through: :assessable_areas,source: :city
end
