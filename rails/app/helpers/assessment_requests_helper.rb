# frozen_string_literal: true

module AssessmentRequestsHelper
    def select_room_plan 
        [
            ['分譲マンション', 1],
            ['一戸建て', 2],
            ['土地', 3]
        ]
    end
  
    def select_type 
        [
            ['1R(ワンルーム)', 1],
            ['1K / 1DK', 2],
            ['1LK / 1LDK', 3],
            ['2K / 2DK', 4],
            ['2LK / 2LDK', 5],
            ['3K / 3DK', 6],
            ['3LK / 3LDK', 7],
            ['4K / 4DK', 8],
            ['4LK / 4LDK', 9],
            ['5K / 5DK', 10],
            ['5LK / 5LDK', 11],
            ['6K / 6DK', 12],
            ['6LK / 6LDK以上', 13]
        ]
    end
  
    def select_building_area
        [
            ['平方メートル', 1],
            ['坪', 2]
        ]
    end
end
