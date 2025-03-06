require 'json'

module ResumeCopilot
  class JobSearchRequest
    attr_accessor :title, :company_name, :city, :state, :country, :is_remote, :size

    def initialize(title:, company_name: nil, city: nil, state: nil, country: nil, is_remote: nil, size: 10)
      @title = title
      @company_name = company_name
      @city = city
      @state = state
      @country = country
      @is_remote = is_remote
      @size = size
    end

    def to_json(*_args)
      {
        title: @title,
        companyName: @company_name,
        city: @city,
        state: @state,
        country: @country,
        isRemote: @is_remote,
        size: @size
      }.compact.to_json
    end
  end
end
