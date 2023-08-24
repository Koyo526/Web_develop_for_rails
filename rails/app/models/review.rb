# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :city
  belongs_to :office
end
