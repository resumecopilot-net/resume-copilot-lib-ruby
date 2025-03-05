require_relative "geographic_location"

module ResumeCopilot
  class JobLocation
    attr_accessor :city, :state, :country, :loc

    def initialize(city:, state:, country:, loc:)
      @city = city
      @state = state
      @country = country
      @loc = loc ? GeographicLocation.new(lat: loc[:lat], lon: loc[:lon]) : nil
    end
  end
end
