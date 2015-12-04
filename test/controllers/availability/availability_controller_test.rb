require 'test_helper'

module Availability
  class AvailabilityControllerTest < ActionController::TestCase
    setup do
      @routes = Engine.routes
    end

		def set_authorization_header
			@request.env['HTTP_AUTHORIZATION'] = 
				ActionController::HttpAuthentication::Basic.encode_credentials(
					Availability.username, Availability.password
				)
		end

    test "server availability routes" do 
			assert_routing '/server', {
				controller: "availability/availability", action: "server"
			}
    end

		test "database availability routes" do
			assert_routing '/database', {
				controller: "availability/availability", action: "database"
			}
		end

		test "server availability check" do
			get :server
			assert_response 401

			set_authorization_header
			get :server
			assert_response 200
		end

		test "database availability check" do
			get :database
			assert_response 401

			set_authorization_header
			get :database
			assert_response 200
		end
  end
end
