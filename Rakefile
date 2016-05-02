require "bundler/gem_tasks"

namespace :vital do
  task :compile_fonts do
    sh 'rm -rf assets/stylesheets/_icons.*'
    sh 'rm -rf assets/fonts'
    sh 'fontcustom compile'
    sh 'sass-convert assets/stylesheets/_vital-icons.scss assets/stylesheets/vital/_icons.sass'
    sh 'sed -i.bkp \'s|url("../fonts/\([^"]*\)")|url(if($vital-sass-asset-helper, vital-font-path("\1"), "../fonts/\1"))|g\' assets/stylesheets/vital/_icons.sass'
    sh 'rm assets/stylesheets/_vital-icons.scss'
    sh 'rm assets/stylesheets/vital/_icons.sass.bkp'
  end
end
