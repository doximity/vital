module Vital
  class Engine < ::Rails::Engine
    isolate_namespace Vital

    initializer 'vital.assets' do |app|
      %w(stylesheets fonts).each do |sub|
        app.config.assets.paths << root.join('assets', sub).to_s
      end
      app.config.assets.precompile += %w( vital-icons.* vital-rails.css vital-components.css )
    end
  end
end
