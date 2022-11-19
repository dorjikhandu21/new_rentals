# frozen_string_literal: true

module Types
  module Enum
    module Properties
      class OccupancyTypeEnum < Types::BaseEnum
        Property.occupancy_types.each_key do |key|
          value key.to_s
        end
      end
    end
  end
end
