require 'cucumber/rake/task'
require 'evergreen'

Cucumber::Rake::Task.new(:cucumber) do |task|
end

desc "Run JavaScript specs via Evergreen"
task :evergreen do
  Evergreen.root = File.dirname(__FILE__)
  result = Evergreen::Runner.new.run
  Kernel.exit(1) unless result
end

task :travis do
  ["rake cucumber", "rake evergreen"].each do |cmd|
    puts "Starting to run #{cmd}..."
    system("export DISPLAY=:99.0 && bundle exec #{cmd}")
    raise "#{cmd} failed!" unless $?.exitstatus == 0
  end
end

task :default => :travis
