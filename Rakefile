# frozen_string_literal: true

require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'


# You can add rake tasks as needed here for running your automated tests.
# The name of the task is found in this section Cucumber::Rake::Task.new(:name_of_task)
Cucumber::Rake::Task.new(:example_test) do |t|
  t.cucumber_opts = '--tag "@example"
                     --format pretty BROWSER=chrome'
end
