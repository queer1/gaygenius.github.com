Given /^I go to the home page$/ do
  visit '/'
end

Then /^I should be on the first cv slide$/ do
  current_path.should == '/cv/slides.html'
end

When /^I click on the right arrow$/ do
  page.execute_script("$('.deck-next-link').show()")
  find('.deck-next-link').click
end