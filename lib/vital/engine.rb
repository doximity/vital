module Vital
  module Rails
    class Engine < ::Rails::Engine
      initializer 'vital.assets' do |app|
        %w(stylesheets fonts).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
