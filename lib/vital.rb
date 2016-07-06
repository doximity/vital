require "vital/version"

module Vital
  # Pretty much copy & pasted from https://github.com/twbs/bootstrap-rubygem/blob/36b5f3f9b4fd383381c87cbdfbab253d5501d6b2/lib/bootstrap.rb
  class << self
    def load!
      register_compass_extension if compass?

      if sprockets?
        register_sprockets
      end

      configure_sass
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def sass_path
      File.join gem_path, 'sass'
    end

    # Environment detection helpers
    def sprockets?
      defined?(::Sprockets)
    end

    def compass?
      defined?(::Compass::Frameworks)
    end

    private

    def configure_sass
      require 'sass'
      ::Sass.load_paths << sass_path
    end

    def register_sprockets
      Sprockets.append_path(sass_path)
    end
  end
end

Vital.load!
