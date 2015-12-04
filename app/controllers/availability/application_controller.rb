module Availability
  class ApplicationController < ActionController::Base
		http_basic_authenticate_with :name => Availability.username, :password => Availability.password
  end
end
