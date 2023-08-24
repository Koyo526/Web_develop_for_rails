# frozen_string_literal: true

class Office < ApplicationRecord
  belongs_to :company
  belongs_to :city
  has_many :reviews, dependent: :destroy
end
