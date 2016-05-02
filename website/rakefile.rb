# Override the default root (one up) since we are under a subdir of a git repo
ENV['PROJECT_ROOT'] = Rake.application.original_dir
require 'middleman-gh-pages'

