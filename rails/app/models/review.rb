# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :cities
  belongs_to :offices
end
