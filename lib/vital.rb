require "vital/version"

module Vital
  # Pretty much copy & pasted from https://github.com/twbs/bootstrap-rubygem/blob/36b5f3f9b4fd383381c87cbdfbab253d5501d6b2/lib/bootstrap.rb
  class << self
    def load!
      register_compass_extension if compass?

      if rails?
        register_rails_engine
      elsif hanami?
        register_hanami
      elsif sprockets?
        register_sprockets
      end

      configure_sass
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    # Environment detection helpers
    def sprockets?
      defined?(::Sprockets)
    end

    def compass?
      defined?(::Compass::Frameworks)
    end

    def rails?
      defined?(::Rails)
    end

    def hanami?
      defined?(::Hanami)
    end

    private

    def configure_sass
      require 'sass'

      ::Sass.load_paths << stylesheets_path
    end

    def register_rails_engine
      require 'vital/engine'
    end

    def register_sprockets
      Sprockets.append_path(stylesheets_path)
    end
  end
end

Vital.load!
