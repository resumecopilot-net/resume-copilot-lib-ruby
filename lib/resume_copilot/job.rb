require_relative "job_location"

module ResumeCopilot
  class Job
    attr_accessor :name, :company_name, :location, :feed, :id, :created

    def initialize(name:, companyName:, location:, feed:, id:, created:)
      @name = name
      @company_name = companyName
      @location = location ? JobLocation.new(
        city: location[:city],
        state: location[:state],
        country: location[:country],
        loc: location[:loc]
      ) : nil
      @feed = feed
      @id = id
      @created = created
    end
  end
end
