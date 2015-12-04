require 'test_helper'
require 'generators/availability/availability_generator'

module Availability
  class AvailabilityGeneratorTest < Rails::Generators::TestCase
    tests AvailabilityGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
