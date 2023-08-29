# frozen_string_literal: true

class AssessableArea < ApplicationRecord
  belongs_to :office
  belongs_to :city
end
