Given /^I go to the home page$/ do
  visit '/'
end

Then /^I should be on the first cv slide$/ do
  current_path.should == '/cv/slides.html'
end