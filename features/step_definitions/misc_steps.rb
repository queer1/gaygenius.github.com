And /^let me see that$/ do
  $stderr.puts 'Press ENTER to continue...'
  $stdin.gets
end

When /^I wait (\d+) seconds$/ do |seconds|
  sleep seconds.to_i
end

When /^I wait until all animations have finished$/ do
  wait_until(10) do
    animated_count = page.evaluate_script(%|$(':animated').length|)
    animated_count == 0
  end
end