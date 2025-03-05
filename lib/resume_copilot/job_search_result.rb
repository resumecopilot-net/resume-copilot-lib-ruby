require_relative "job"

module ResumeCopilot
  class JobSearchResult
    attr_accessor :jobs

    def initialize(jobs:)
      @jobs = jobs.map { |job| Job.new(**job) }
    end
  end
end
