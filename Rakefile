require "bundler/gem_tasks"

namespace :vital do
  task :compile_fonts do
    sh 'rm -rf assets/stylesheets/_icons.*'
    sh 'rm -rf assets/fonts'
    sh 'fontcustom compile'
    # Unquote escape sequences, e.g. content: "#{$sep}\00a0" to content: #{$sep}\00a0
    # Works around Sass issue: https://github.com/sass/sass/issues/1395
    sh 'sed -i.bkp \'s|"\(\\\\f[0-9a-z]*\)"|\1|g\' assets/stylesheets/_vital-icons.scss'
    sh 'sass-convert assets/stylesheets/_vital-icons.scss assets/stylesheets/vital/_icons.sass'
    # Add back the quote
    sh 'sed -i.bkp \'s|\(\\\\f[0-9a-z]*\)|"\1"|g\' assets/stylesheets/vital/_icons.sass'
    sh 'sed -i.bkp \'s|url("../fonts/\([^"]*\)")|url(if($vital-sass-asset-helper, vital-font-path("\1"), "../fonts/\1"))|g\' assets/stylesheets/vital/_icons.sass'
    sh 'rm -f assets/stylesheets/{,**/}*.bkp'
    sh 'rm -f assets/stylesheets/{,**/}*.scss'
  end

  task :prepare_package do
    release_dir = "pkg/vital-v#{Vital::VERSION}"
    [
      "rm -rf #{release_dir}",
      "mkdir -p #{release_dir}/css",
      "cp -R assets/fonts #{release_dir}/",
      "cp {CHANGELOG,LICENSE,README}.md #{release_dir}/",
      "cp -R assets/stylesheets #{release_dir}/sass"
    ].each { |cmd| sh cmd }

    sh "bundle exec sass -C #{release_dir}/sass/vital.css.sass #{release_dir}/css/vital.css"
    sh "bundle exec sass -C -t compressed #{release_dir}/sass/vital.css.sass #{release_dir}/css/vital.min.css"

    puts '-----> Compressing '
    sh "cd pkg && tar cvzf vital-v#{Vital::VERSION}.tar.gz vital-v#{Vital::VERSION}/"
  end
end
