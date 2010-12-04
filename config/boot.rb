require 'rubygems'

require 'github/markup'
GitHub::Markup.markup(:markdown, /md|mkdn?|mdown|markdown/) do |content|
  Markdown.new(content).to_html
end

# Set up gems listed in the Gemfile.
gemfile = File.expand_path('../../Gemfile', __FILE__)
begin
  ENV['BUNDLE_GEMFILE'] = gemfile
  require 'bundler'
  Bundler.setup
rescue Bundler::GemNotFound => e
  STDERR.puts e.message
  STDERR.puts "Try running `bundle install`."
  exit!
end if File.exist?(gemfile)
