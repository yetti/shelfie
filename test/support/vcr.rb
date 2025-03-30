# frozen_string_literal: true

require "vcr"

VCR.configure do |config|
  config.cassette_library_dir = "fixtures/cassettes"
  config.hook_into :webmock
  config.ignore_localhost = true
  config.default_cassette_options = {
    match_requests_on: [ :method, :host, :path ]
  }
end
