require "bundler/gem_tasks"

begin
  # require 'rspec/core/rake_task'
  #
  # RSpec::Core::RakeTask.new(:spec)
  # task default: :spec
  task :run_main_rb do
    system "ruby main.rb"
  end

rescue LoadError
  # no rspec available
end
