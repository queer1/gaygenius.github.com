Given /^I go to the home page and wait to be redirected$/ do
  visit '/'
  step %|I wait 2 seconds|
end

Then /^I should be on the first cv slide$/ do
  current_path.should == '/cv/slides.html'
end