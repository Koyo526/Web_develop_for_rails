# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :cities, class_name: 'City', foreign_key: 'id', inverse_of: 'reviews'
  belongs_to :offices, class_name: 'Office', foreign_key: 'id', inverse_of: 'reviews'
end
