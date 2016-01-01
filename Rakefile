require 'bundler'

namespace :site do
  desc "build jekyll site"
  task :build do
    sh "bundle exec jekyll build"
  end

  desc "serve local site"
  task :serve do
    sh "bundle exec jekyll serve -w -t"
  end

  desc "deploy site"
  task :deploy do
    puts "not yet implemented"
  end
end