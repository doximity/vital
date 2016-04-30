require 'middleman-gh-pages'

namespace :vital do
  task :compile_fonts do
    sh 'rm -rf source/stylesheets/_icons.*'
    sh 'rm -rf source/fonts'
    sh 'fontcustom compile'
    sh 'sass-convert source/stylesheets/_vital-icons.scss source/stylesheets/_icons.sass'
    sh 'rm source/stylesheets/_vital-icons.scss'
  end
end
