# frozen_string_literal: true

require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

# The following are intended for CircleCI as they output xml for CircleCI's ingestion
#
# CRITICAL
#
Cucumber::Rake::Task.new(:example_test) do |t|
  t.cucumber_opts = '--tag "@example"
                     --format pretty BROWSER=chrome'
end
