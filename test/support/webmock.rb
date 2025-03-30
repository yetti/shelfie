# frozen_string_literal: true

require "webmock/minitest"

# Disables HTTP requests, with the exception of requests to localhost
WebMock.disable_net_connect!(
  allow_localhost: true
)
