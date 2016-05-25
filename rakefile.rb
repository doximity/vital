require 'middleman-gh-pages'

namespace :vital do
  task :compile_fonts do
    sh 'rm -rf source/stylesheets/_icons.*'
    sh 'rm -rf source/fonts'
    sh 'fontcustom compile'
    # Unquote escape sequences, e.g. content: "#{$sep}\00a0" to content: #{$sep}\00a0
    # Works around Sass issue: https://github.com/sass/sass/issues/1395
    sh 'sed -i.bkp \'s|"\(\\\\f[0-9a-z]*\)"|\1|g\' source/stylesheets/_icons.scss'
    sh 'sass-convert source/stylesheets/_icons.scss source/stylesheets/_icons.sass'
    # Add back the quote
    sh 'sed -i.bkp \'s|\(\\\\f[0-9a-z]*\)|"\1"|g\' source/stylesheets/_icons.sass'
    sh 'rm -f source/stylesheets/{,**/}*.bkp'
    sh 'rm -f source/stylesheets/{,**/}*.scss'
  end
end
