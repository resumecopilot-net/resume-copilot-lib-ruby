require_relative 'lib/resume_copilot/version'
require_relative 'lib/resume_copilot/geographic_location'
require_relative 'lib/resume_copilot/job_location'
require_relative 'lib/resume_copilot/job'
require_relative 'lib/resume_copilot/job_search_request'
require_relative 'lib/resume_copilot/job_search_result'
require_relative 'lib/resume_copilot/job_search_helper'

puts "Testing ResumeCopilot #{ResumeCopilot::VERSION}"
puts "="*50

request = ResumeCopilot::JobSearchRequest.new(
  title: "developer",
  size: 5
)

puts "Created request: #{JSON.parse(request.to_json).inspect}"
puts "="*50

begin
  puts "Sending request to ResumeCopilot API..."
  results = ResumeCopilot::JobSearchHelper.search_jobs(request)
  
  puts "Found #{results.jobs.length} jobs:"
  results.jobs.each_with_index do |job, index|
    puts "-"*30
    puts "Job #{index + 1}:"
    puts "Title: #{job.name}"
    puts "Company: #{job.company_name}"
    
    if job.location
      location_parts = [job.location.city, job.location.state, job.location.country].compact
      puts "Location: #{location_parts.join(', ')}"
      
      if job.location.loc
        puts "Coordinates: Lat #{job.location.loc.lat}, Lon #{job.location.loc.lon}"
      end
    end
    
    puts "Source: #{job.feed}"
    puts "ID: #{job.id}"
    puts "Posted: #{job.created}"
  end
rescue => e
  puts "Error: #{e.message}"
  puts e.backtrace.join("\n")
end