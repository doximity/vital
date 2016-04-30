namespace :vital do
  task :compile_fonts do
    sh 'rm -rf assets/stylesheets/_icons.*'
    sh 'rm -rf assets/fonts'
    sh 'fontcustom compile'
    sh 'sass-convert assets/stylesheets/_vital-icons.scss assets/stylesheets/vital/_icons.sass'
    sh 'rm assets/stylesheets/_vital-icons.scss'
  end
end
