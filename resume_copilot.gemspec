require_relative "lib/resume_copilot/version"

Gem::Specification.new do |spec|
    spec.name          = "resume_copilot"
    spec.version       = ResumeCopilot::VERSION
    spec.authors       = ["Resume Copilot"]
    spec.email         = ["support@resumecopilot.net"]
  
    spec.summary       = "A Ruby library for job search integration with ResumeCopilot API."
    spec.description   = "ResumeCopilot is a Ruby client library that allows users to search for jobs using ResumeCopilot API."
    spec.homepage      = "https://github.com/resumecopilot-net/resume-copilot-lib-ruby"
    spec.license       = "MIT"
  
    spec.files         = Dir["lib/**/*", "README.md", "LICENSE.txt"]
    spec.require_paths = ["lib"]
  
    spec.add_dependency "json"
    spec.add_dependency "net-http"
  
    spec.metadata["rubygems_mfa_required"] = "true"
  end
  