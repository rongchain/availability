require "availability/engine"

module Availability
  DEFAULTS = {
		username: 'username', 
		password: 'password'
  }

  class << self
    def options
      @options ||= DEFAULTS.dup
    end

		def options=(opts)
			@options = opts
		end

    def configure
      yield self
    end

	end

	DEFAULTS.each do |k, v|
		self.define_singleton_method "#{k}=" do |value|
			self.options.merge!(k => value)
		end

		self.define_singleton_method k do
			self.options[k]
		end
	end

end
