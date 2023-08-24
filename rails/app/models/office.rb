class Office < ApplicationRecord
    belongs_to :companies
    belongs_to :cities
end
