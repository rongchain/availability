require_dependency "availability/application_controller"

module Availability
  class AvailabilityController < ApplicationController

		def server
			head :ok
		end

    def database
			head ActiveRecord::Base.connected? ? :ok : 404
    end
  end
end
