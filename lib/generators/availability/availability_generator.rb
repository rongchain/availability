class AvailabilityGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

	def mount_routes
	  route "mount Availability::Engine => '/availability'"
	end

	def copy_initializer_file
    copy_file "initializer.rb", "config/initializers/sso_client.rb"
  end

end
