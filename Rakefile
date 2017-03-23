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

  desc "Create a new post template, make sure to enter your title as a string: rake site:new_post[\"title with spaces\"]"
  task :new_post, [:title] do |task, args|
    post_title = args[:title].downcase.tr(" ", "-")
    date = Time.now
    title = "#{date.strftime("%Y-%m-%d")}-#{post_title}"
    File.open("_posts/#{title}.md", 'w') {|f|
      f << "---\n"
      f << "layout: post\n"
      f << "title: \"#{args[:title]}\"\n"
      f << "tags:\n"
      f << "\t - programming\n"
      f << "\t - tech\n"
      f << "type: post\n"
      f << "published: false\n"
      f << "date: #{date.strftime('%Y-%m-%d %H:%M')}\n"
      f << "---\n"
    }
  end
end
