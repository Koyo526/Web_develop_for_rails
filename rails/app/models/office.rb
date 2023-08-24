# frozen_string_literal: true

class Office < ApplicationRecord
  belongs_to :companies
  belongs_to :cities
end
