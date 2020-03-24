# frozen_string_literal: true

require 'colorize'
require 'json_schemer'
require 'json'
require 'bundler/gem_tasks'

task :test do
  test_path = File.expand_path('test', __dir__)
  $LOAD_PATH.unshift(test_path) unless $LOAD_PATH.include?(test_path)

  Dir.glob('test/**/*_test.rb').each do |file|
    require_relative file
  end
end
