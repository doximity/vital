# frozen_string_literal: true

namespace :vital do
  desc "Build stylesheets and prepare for a release"
  task :build do
    puts "-----> Preparing assets for release"
    release_dir = "dist"
    [
      "rm -rf #{release_dir}",
      "mkdir -p #{release_dir}/{css,scss}",
      "cp {CHANGELOG,LICENSE,README}.md #{release_dir}/",
      "cp -R sass #{release_dir}/",
      "rm -f #{release_dir}/{,**/}.DS_Store",
    ].each { |cmd| sh cmd }

    sh "bundle exec sass -r vital -C #{release_dir}/sass/vital.css.sass #{release_dir}/css/vital.css"
    sh "bundle exec sass -r vital -C -t compressed #{release_dir}/sass/vital.css.sass #{release_dir}/css/vital.min.css"
    sh "sass-convert -R -F sass -T scss -C #{release_dir}/sass #{release_dir}/scss"

    require_relative "lib/vital/version"
    puts "-----> Compressing"
    sh "tar cvzfs vital-v#{Vital::VERSION}.tar.gz '/dist/vital-v#{Vital::VERSION}/' dist/"
  end
end
