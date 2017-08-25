
require 'burning_glass/insight/insight_resource'

module BurningGlass
  module Insight

    class << self

      REQUIREMENTS = %w(consumer_key consumer_secret insight_token insight_secret)

      def requirements
        REQUIREMENTS
      end

    end

  end
end