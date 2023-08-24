# frozen_string_literal: true

class Office < ApplicationRecord
  belongs_to :companies, class_name: 'Company', foreign_key: 'id'
  belongs_to :cities, class_name: 'City', foreign_key: 'id'
  has_many :reviews
end
