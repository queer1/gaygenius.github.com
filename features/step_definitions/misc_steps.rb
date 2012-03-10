And /^let me see that$/ do
  $stderr.puts 'Press ENTER to continue...'
  $stdin.gets
end

When /^I wait (\d+) seconds$/ do |seconds|
  sleep seconds.to_i
end