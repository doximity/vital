module Vital
  class Engine < ::Rails::Engine
    isolate_namespace Vital

    initializer 'vital.assets' do |app|
      app.config.assets.paths << "#{Vital.gem_path}/fonts"
      app.config.assets.precompile += %w( icons.* )
    end
  end
end
