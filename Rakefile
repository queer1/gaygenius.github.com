require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:cucumber) do |task|
end

task :travis do
  ["rake cucumber"].each do |cmd|
    puts "Starting to run #{cmd}..."
    system("export DISPLAY=:99.0 && bundle exec #{cmd}")
    raise "#{cmd} failed!" unless $?.exitstatus == 0
  end
end

task :default => :travis
