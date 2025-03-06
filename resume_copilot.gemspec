require_relative "lib/resume_copilot/version"

Gem::Specification.new do |spec|
    spec.name          = "resume_copilot"
    spec.version       = ResumeCopilot::VERSION
    spec.authors       = ["Resume Copilot"]
    spec.email         = ["support@resumecopilot.net"]
  
    spec.summary       = "A Ruby library for job search integration with ResumeCopilot API."
    spec.description   = "ResumeCopilot is a Ruby client library that allows users to search for jobs using ResumeCopilot API."
    spec.homepage      = "https://resumecopilot.net"
    spec.license       = "MIT"
  
    spec.files         = Dir["lib/**/*", "README.md", "LICENSE.txt"]
    spec.require_paths = ["lib"]
  
    spec.add_dependency "json"
    spec.add_dependency "net-http"
  
    spec.metadata["rubygems_mfa_required"] = "true"
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/resumecopilot-net/resume-copilot-lib-ruby"
    spec.metadata["api_uri"] = "https://api.resumecopilot.net/swagger/index.html"
    spec.metadata["github_repo"] = "https://api.resumecopilot.net/swagger/index.html"
    spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/resumecopilot-net"

  end
  