# frozen_string_literal: true

namespace :ci do
  desc "Run specs"
  task :specs do
    reports = "tmp/test-results/rspec"
    sh "mkdir -p #{reports}"
    sh "bundle exec rspec ./spec " \
          "--format progress "\
          "--format RspecJunitFormatter " \
          "-o #{reports}/results.xml"
  end

  desc "Run rubocop"
  task :rubocop do
    sh "bundle exec rubocop --display-cop-names --extra-details --display-style-guide"
  end

  desc "Build documentation"
  task doc: :rdoc
end
