require 'net/http'
require 'json'
require 'uri'

module ResumeCopilot
  class JobSearchHelper
    API_BASE_URL = 'https://api.resumecopilot.net'.freeze

    def self.search_jobs(request)
      uri = URI("#{API_BASE_URL}/api/v1/search")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request_body = request.to_json
      headers = { 'Content-Type' => 'application/json' }

      response = http.post(uri.path, request_body, headers)

      raise "HTTP Error: #{response.code}" unless response.is_a?(Net::HTTPSuccess)

      parsed_response = JSON.parse(response.body, symbolize_names: true)
      JobSearchResult.new(jobs: parsed_response[:jobs])
    rescue StandardError => e
      raise "Error connecting to job search service: #{e.message}"
    end
  end
end
