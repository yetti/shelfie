# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"
require_relative "simplecov_helper"
require_relative "../config/environment"
require "rails/test_help"
require "minitest/reporters"

Dir[File.join(__dir__, "support/**/*.rb")].sort.each { |file| require file }

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
  end
end
