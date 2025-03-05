module ResumeCopilot
    class GeographicLocation
      attr_accessor :lat, :lon
  
      def initialize(lat:, lon:)
        @lat = lat
        @lon = lon
      end
    end
  end
  