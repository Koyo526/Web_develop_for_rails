# frozen_string_literal: true

module ApplicationHelper
    def number_format(num)
        number_formatted = num /10000
        return "#{number_formatted}万円'"

    end
end
