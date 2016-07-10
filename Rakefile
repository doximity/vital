require 'bundler/gem_tasks'

task :build do
  puts '-----> Preparing assets for release'
  release_dir = "dist"
  [
    "rm -rf #{release_dir}",
    "mkdir -p #{release_dir}/{css,scss}",
    "cp {CHANGELOG,LICENSE,README}.md #{release_dir}/",
    "cp -R sass #{release_dir}/",
    "cp -R fonts #{release_dir}/"
  ].each { |cmd| sh cmd }

  sh "bundle exec sass -r vital -C #{release_dir}/sass/vital.css.sass #{release_dir}/css/vital.css"
  sh "bundle exec sass -r vital -C -t compressed #{release_dir}/sass/vital.css.sass #{release_dir}/css/vital.min.css"
  sh "sass-convert -R -F sass -T scss -C #{release_dir}/sass #{release_dir}/scss"
end

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
