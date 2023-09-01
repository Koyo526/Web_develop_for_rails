# frozen_string_literal: true

module ApplicationHelper
  def number_format(num)
    number_formatted = num / 10_000
    number_formatted.to_s.insert(-1, '万円')
    "#{number_formatted}万円"
  end
end
