require_relative "job"

module ResumeCopilot
  class JobSearchResult
    attr_accessor :jobs

    def initialize(jobs:)
      @jobs = jobs.map { |job| Job.new(**filter_job_attributes(job)) }
    end

    private

    def filter_job_attributes(job)
      allowed_keys = %i[name companyName location feed id created]
      job.slice(*allowed_keys)  # Keep only the allowed keys
    end
  end
end
