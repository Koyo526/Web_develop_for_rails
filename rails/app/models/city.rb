# frozen_string_literal: true

class City < ApplicationRecord
  has_many :offices, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :prefecture
end
