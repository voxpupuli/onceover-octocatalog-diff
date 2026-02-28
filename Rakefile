# frozen_string_literal: true

require 'rspec/core/rake_task'
require 'voxpupuli/test/rake'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

begin
  require 'rubygems'
  require 'github_changelog_generator/task'
rescue LoadError
  # Do nothing if no required gem installed
else
  GitHubChangelogGenerator::RakeTask.new :changelog do |config|
    config.exclude_labels = %w[duplicate question invalid wontfix wont-fix skip-changelog github_actions]
    config.user = 'voxpupuli'
    config.project = 'onceover-octocatalog-diff'
    gem_version = Gem::Specification.load("#{config.project}.gemspec").version
    config.future_release = "v#{gem_version}"
  end
end
