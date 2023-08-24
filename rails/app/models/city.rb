# frozen_string_literal: true

class City < ApplicationRecord
    belongs_to: prefectures, class_name: 'Prefecture', foreign_key: 'id'
    has_many: offices
    has_many: reviews
end
