require 'bundler/setup'
require 'active_record'
require 'rake'
require 'rspec/core/rake_task'

# Task to run all examples
desc "Run all examples"
RSpec::Core::RakeTask.new(:spec)

namespace :spec do
  desc "Run all examples with coverage"
  RSpec::Core::RakeTask.new(:coverage) do |t|
    t.rspec_opts = '--format documentation --color --coverage'
  end
end

# Default task to run unit tests
desc 'Default: run unit tests.'
task default: :spec
