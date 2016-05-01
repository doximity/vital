module Vital
  module Rails
    class Engine < ::Rails::Engine
      initializer 'vital.assets' do |app|
        app.config.assets.paths << root.join('assets/stylesheets').to_s
      end
    end
  end
end
