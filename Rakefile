task :compile_fonts do
  sh 'rm -rf sass/_icons.*'
  sh 'rm -rf fonts'
  sh 'fontcustom compile'
  # Works around Sass issue: https://github.com/sass/sass/issues/1395
  # based on https://github.com/sass/sass/issues/659#issuecomment-193023924
  sh 'sed -i.bkp \'s|"\(\\\\f[0-9a-z]*\)"|\1|g\' sass/vital/_icons.scss'
  sh 'sass-convert sass/vital/_icons.scss sass/vital/_icons.sass'
  # Add back the quote
  sh 'sed -i.bkp \'s|\\\\\(f[0-9a-z]*\)|char("\1")|g\' sass/vital/_icons.sass'
  sh 'sed -i.bkp \'s|url("../fonts/\([^"]*\)")|url(if($vital-sass-asset-helper, vital-font-path("\1"), "../fonts/\1"))|g\' sass/vital/_icons.sass'
  sh 'rm -f sass/{,**/}*.bkp'
  sh 'rm -f sass/{,**/}*.scss'
end
